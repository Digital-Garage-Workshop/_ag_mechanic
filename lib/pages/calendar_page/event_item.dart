import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '/models/event.dart';

class EventItem extends StatelessWidget {
  const EventItem({
    super.key,
    required this.data,
    required this.index,
  });

  final Event data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: data.type.color, width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () => context.push('/jobs/$index'),
        title: Text(
          '${DateFormat('yyyy-MM-dd').format(data.date)} | Event #${index + 1}',
          style: TextStyle(color: data.type.color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
