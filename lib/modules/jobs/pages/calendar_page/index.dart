import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

import '/common/providers/job_service.provider.dart';
import '/models/job.dart';
import 'event_item.dart';
import 'event_marker.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendarFormat = ref.watch(calendarFormatProvider);
    final firstDay = ref.watch(firstDayProvider);
    final lastDay = ref.watch(lastDayProvider);
    final focusedDay = ref.watch(focusedDayProvider);
    final selectedEvents = ref.watch(selectedEventsProvider);
    final events = ref.watch(fetchJobsProvider);

    return Scaffold(
      body: Column(
        children: [
          TableCalendar<Job>(
            firstDay: firstDay,
            lastDay: lastDay,
            focusedDay: focusedDay,
            selectedDayPredicate: (day) => focusedDay == day,
            pageJumpingEnabled: true,
            calendarFormat: calendarFormat,
            calendarBuilders: CalendarBuilders(
              singleMarkerBuilder: (_, __, event) {
                return EventMarker(color: event.status.color);
              },
            ),
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            locale: "mn_MN",
            eventLoader: (date) {
              return events.valueOrNull?[date] ?? [];
            },
            onDaySelected: (selectedDay, focusedDay) {
              ref.read(focusedDayProvider.notifier).state = focusedDay;
            },
            onFormatChanged: (format) {
              ref.read(calendarFormatProvider.notifier).state = format;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: events.when(
              data: (data) {
                return ListView.builder(
                  itemCount: selectedEvents.length,
                  itemBuilder: (_, index) {
                    final job = selectedEvents.elementAt(index);

                    return EventItem(data: job);
                  },
                );
              },
              error: (_, __) => const SizedBox(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final firstDayProvider = StateProvider((ref) {
  final today = DateTime.now();
  final firstDay = DateTime(today.year, today.month - 3, today.day);

  return firstDay;
});
final lastDayProvider = StateProvider((ref) {
  final today = DateTime.now();
  final firstDay = DateTime(today.year, today.month + 3, today.day);

  return firstDay;
});
final calendarFormatProvider = StateProvider(
  (ref) => CalendarFormat.month,
);
final focusedDayProvider = StateProvider((ref) {
  final now = DateTime.now();

  return DateTime.utc(now.year, now.month, now.day);
});
final selectedEventsProvider = StateProvider((ref) {
  final focusedDay = ref.watch(focusedDayProvider);
  final events = ref.watch(fetchJobsProvider);

  return events.valueOrNull?[focusedDay] ?? [];
});
final fetchJobsProvider = FutureProvider((ref) async {
  final jobService = ref.watch(jobServiceProvider);
  final jobs = await jobService.fetchJobs();
  final events = LinkedHashMap<DateTime, List<Job>>(
    equals: DateUtils.isSameDay,
    hashCode: (key) {
      return (key.microsecondsSinceEpoch ^ (key.microsecondsSinceEpoch >> 30)) &
          0x3FFFFFFF;
    },
  )..addAll({
      for (var job in jobs)
        job.date: jobs.where((element) => element.date == job.date).toList()
    });

  return events;
});
