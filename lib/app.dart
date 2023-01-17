import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_theme.dart';
import 'firebase_messaging_wrapper.dart';
import 'router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = generateRouter(ref);

    return FirebaseMessagingWrapper(
      child: MaterialApp.router(
        title: 'Garage Mechanic',
        routerConfig: router,
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
      ),
    );
  }
}
