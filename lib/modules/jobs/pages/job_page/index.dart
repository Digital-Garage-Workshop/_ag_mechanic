import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '/common/providers/job_service.provider.dart';
import '/models/job.dart';
import '/modules/jobs/pages/job_page/detail_item.dart';

final fetchJobProvider = FutureProvider.family<Job, String>((ref, id) async {
  final jobService = ref.watch(jobServiceProvider);
  final job = await jobService.fetchJob(id);

  return job;
});

class JobPage extends ConsumerWidget {
  const JobPage({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final job = ref.watch(fetchJobProvider(jid));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => context.pop(),
        ),
        title: const Text('ЗАСВАРЫН ДЭЛГЭРЭНГҮЙ'),
      ),
      body: SafeArea(
        child: job.when(
          data: (data) {
            return ListView(
              padding: const EdgeInsets.all(12),
              children: [
                JobDetails(data: data),
              ],
            );
          },
          error: (_, __) => const SizedBox(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class JobDetails extends StatelessWidget {
  const JobDetails({super.key, required this.data});

  final Job data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ...[
            const DetailItemData(
              icon: Icons.phone,
              subtitle: "99505251",
              title: "Утас",
            ),
            const DetailItemData(
              icon: Icons.email,
              subtitle: "tuugii.eclips@yahoo.com",
              title: "И-мэйл",
            ),
            DetailItemData(
              icon: Icons.access_time_filled,
              subtitle:
                  '${DateFormat("yyyy/MM/dd").format(data.date)} ${data.startTime} - ${data.endTime}',
              title: "Цаг захиалга",
            ),
            DetailItemData(
              icon: Icons.directions_car,
              subtitle: 'Toyota / Prius (${data.plateNumber})',
              title: "Машин",
            ),
            const DetailItemData(
              icon: Icons.settings,
              subtitle: "Бензин - Цахилгаан / 1797",
              title: "Хөдөлгүүр",
            )
          ].map((data) => DetailItem(data: data)).toList(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.car_repair),
                  SizedBox(width: 8),
                  Text('Машины засварын түүх')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
