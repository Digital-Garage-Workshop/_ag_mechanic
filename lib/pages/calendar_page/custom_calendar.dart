import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '/models/event.dart';
import 'event_marker.dart';

class CustomCalendar extends StatelessWidget {
  CustomCalendar({
    super.key,
    this.firstDay,
    this.lastDay,
    required this.focusedDay,
    // required this.selectedDay,
    this.eventLoader,
    this.onDaySelected,
    this.onPageChanged,
  });

  final DateTime? firstDay;
  final DateTime? lastDay;
  final DateTime focusedDay;
  // final DateTime selectedDay;
  List<Event> Function(DateTime)? eventLoader;
  void Function(DateTime, DateTime)? onDaySelected;
  void Function(DateTime)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return TableCalendar<Event>(
      firstDay: firstDay ?? DateTime(now.year, now.month - 3, now.day),
      lastDay: lastDay ?? DateTime(now.year, now.month + 3, now.day),
      focusedDay: focusedDay,
      selectedDayPredicate: (day) => focusedDay == day,
      pageJumpingEnabled: true,
      calendarFormat: CalendarFormat.month,
      calendarBuilders: CalendarBuilders(
        singleMarkerBuilder: (_, __, event) => EventMarker(data: event),
      ),
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      locale: "mn_MN",
      eventLoader: eventLoader,
      onDaySelected: onDaySelected,
      onPageChanged: onPageChanged,
    );
  }
}
