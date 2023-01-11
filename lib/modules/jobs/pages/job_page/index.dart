import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/common/providers/job_service.provider.dart';
import '/models/job.dart';
import 'job_details.dart';
import 'job_diagnosis.dart';

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
                JobDiagnosis(jid: jid),
              ],
            );
          },
          error: (_, __) => const SizedBox(),
          loading: () => const Center(
            child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
