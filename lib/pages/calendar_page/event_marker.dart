import 'package:flutter/material.dart';

import '/models/event.dart';

class EventMarker extends StatelessWidget {
  const EventMarker({
    super.key,
    required this.data,
  });

  final Event data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 0.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: data.type.color,
      ),
    );
  }
}
