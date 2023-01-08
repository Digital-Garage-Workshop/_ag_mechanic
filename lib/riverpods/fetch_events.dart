import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/models/event.dart';

part 'fetch_events.g.dart';

@riverpod
Future<LinkedHashMap<DateTime, List<Event>>> fetchEvents(
    FetchEventsRef ref) async {
  final today = DateTime.now();
  final firstDay = DateTime(today.year, today.month - 3, today.day);
  final lastDay = DateTime(today.year, today.month + 3, today.day);

  final events = LinkedHashMap<DateTime, List<Event>>(
    equals: DateUtils.isSameDay,
    hashCode: (key) {
      return (key.microsecondsSinceEpoch ^ (key.microsecondsSinceEpoch >> 30)) &
          0x3FFFFFFF;
    },
  )..addAll({
      for (var item in List.generate(50, (index) => index))
        DateTime.utc(firstDay.year, firstDay.month, item * 5): List.generate(
          item % 4 + 1,
          (index) => Event(
            date: DateTime.utc(firstDay.year, firstDay.month, item * 5),
            title: 'Event $item | ${index + 1}',
            type: EventType.values[Random().nextInt(3)],
          ),
        )
    });

  return events;
}
