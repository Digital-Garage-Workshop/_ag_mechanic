import 'package:flutter/material.dart';

class EventMarker extends StatelessWidget {
  const EventMarker({
    super.key,
    this.color = Colors.blue,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 0.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
