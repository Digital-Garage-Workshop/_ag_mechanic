import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

import '/models/event.dart';
import 'custom_calendar.dart';
import 'event_item.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  final ValueNotifier<DateTime> _focusedDay = ValueNotifier(DateTime.now());

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _selectedEvents = ValueNotifier(
      events[DateTime.utc(now.year, now.month, now.day)] ?? [],
    );
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      body: Column(
        children: [
          CustomCalendar(
            firstDay: DateTime(now.year, now.month - 3, now.day),
            lastDay: DateTime(now.year, now.month + 3, now.day),
            focusedDay: _focusedDay.value,
            eventLoader: (date) {
              return events[date] ?? [];
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _focusedDay.value = focusedDay;
              });

              _selectedEvents.value = events[focusedDay] ?? [];
            },
            onPageChanged: (focusedDay) {
              _focusedDay.value = focusedDay;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (_, index) => EventItem(
                    data: value.elementAt(index),
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
