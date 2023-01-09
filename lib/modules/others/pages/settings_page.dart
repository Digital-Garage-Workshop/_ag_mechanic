import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/common/providers/client.provider.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            const storage = FlutterSecureStorage();
            await storage.delete(key: 'accessToken');
            ref.read(accessTokenProvider.notifier).state = null;
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
