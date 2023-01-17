import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Notifications Page'),
            ElevatedButton(
              onPressed: () async {
                final token = await FirebaseMessaging.instance.getToken();
                print(token);
              },
              child: const Text('FCM registration token'),
            )
          ],
        ),
      ),
    );
  }
}
