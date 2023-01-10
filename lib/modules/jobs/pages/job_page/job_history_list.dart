import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '/common/providers/job_service.provider.dart';
import '/models/job_history.dart';
import 'job_history_item.dart';

final fetchHistoryProvider =
    FutureProvider.family<List<JobHistory>, String>((ref, id) async {
  final jobService = ref.watch(jobServiceProvider);
  final list = await jobService.fetchJobHistory(id);

  return list;
});

class JobHistoryList extends ConsumerWidget {
  const JobHistoryList({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(fetchHistoryProvider(jid));

    return SafeArea(
      top: false,
      child: FractionallySizedBox(
        heightFactor: 0.9,
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.chevron_left),
              ),
              title: const Center(
                child: Text('Машины засварын түүх'),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: ModalScrollController.of(context),
                child: list.when(
                  data: (data) {
                    return Column(
                      children: data
                          .map((history) => JobHistoryItem(
                                history: history,
                              ))
                          .toList(),
                    );
                  },
                  error: (_, __) {
                    return const SizedBox();
                  },
                  loading: () {
                    return const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
