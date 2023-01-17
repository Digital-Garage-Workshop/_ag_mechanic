import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'common/providers/client.provider.dart';
import 'common/providers/connectivity.provider.dart';
import 'common/services/logger.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  final container = ProviderContainer(
    observers: [
      Logger(),
    ],
  );

  await setupApp(container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

Future<void> setupApp(ProviderContainer container) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  const storage = FlutterSecureStorage();
  final accessToken = await storage.read(key: "accessToken");
  container.read(accessTokenProvider.notifier).state = accessToken;

  container.listen(
    connectivityStreamProvider,
    (previous, next) => next.whenData((value) {
      final current = container.read(connectivityProvider);
      if (current != value) {
        container.read(connectivityProvider.notifier).state = value;
      }
    }),
  );

  final connectivity = await Connectivity().checkConnectivity();
  if ([ConnectivityResult.wifi, ConnectivityResult.mobile]
      .contains(connectivity)) {
    // await loadConfigs(container.read);
  }
}
