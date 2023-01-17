import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseMessagingWrapper extends StatefulWidget {
  const FirebaseMessagingWrapper({super.key, required this.child});

  final Widget child;
  @override
  State<StatefulWidget> createState() => _FirebaseMessagingWrapperState();
}

class _FirebaseMessagingWrapperState extends State<FirebaseMessagingWrapper> {
  Future<void> setupInteractedMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {}
  }

  @override
  void initState() {
    super.initState();

    // Run code required to handle interacted messages in an async function
    // as initState() must not be async
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
