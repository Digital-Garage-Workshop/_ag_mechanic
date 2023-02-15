import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/common/providers/job_service.provider.dart';
import '/models/diagnosis_check_result.dart';

final formProvider =
    StateProvider.autoDispose<Map<String, CheckResultValue?>>((ref) {
  return {};
});

final fetchCheckListProvider = FutureProvider.autoDispose((ref) async {
  final jobService = ref.watch(jobServiceProvider);
  final list = await jobService.fetchCheckList();

  return list;
});
final fetchCheckListResultProvider = FutureProvider.autoDispose
    .family<List<DiagnosisCheckResult>, String>((ref, id) async {
  final jobService = ref.watch(jobServiceProvider);
  final list = await jobService.fetchCheckResult(id);

  ref.read(formProvider.notifier).state = {
    for (final check in list) check.id: check.value
  };

  return list;
});

final formControllerProvider =
    StateNotifierProvider.autoDispose<FormControllerNotifier, AsyncValue>(
        (ref) {
  return FormControllerNotifier(ref);
});

class FormControllerNotifier extends StateNotifier<AsyncValue> {
  FormControllerNotifier(this.ref) : super(const AsyncData(null));

  final Ref ref;

  Future<AsyncValue> submit(
      String id, Map<String, CheckResultValue?> result) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final service = ref.watch(jobServiceProvider);
      await service.submitCheckResult(id, result);
    });

    return state;
  }
}

class JobDiagnosisForm extends ConsumerWidget {
  const JobDiagnosisForm({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(fetchCheckListProvider);
    final form = ref.watch(formProvider);
    final formController = ref.watch(formControllerProvider);

    return list.when(
      data: (data) {
        return Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(bottom: 64),
              children: data.map((check) {
                final status = form[check.id];

                return ListTile(
                  leading: Text(check.name),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      CircleAvatar(
                        backgroundColor: status == CheckResultValue.normal
                            ? Colors.green
                            : Colors.grey,
                        child: IconButton(
                          icon: const Icon(Icons.check),
                          color: Colors.white,
                          onPressed: () =>
                              ref.read(formProvider.notifier).state = {
                            ...ref.read(formProvider.notifier).state,
                            check.id: CheckResultValue.normal,
                          },
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: status == CheckResultValue.nonormal
                            ? Colors.red
                            : Colors.grey,
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.white,
                          onPressed: () =>
                              ref.read(formProvider.notifier).state = {
                            ...ref.read(formProvider.notifier).state,
                            check.id: CheckResultValue.nonormal,
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: !formController.isLoading
                      ? () async {
                          final form = ref.read(formProvider);
                          final checklist = list.value;

                          if (checklist != null &&
                              checklist.isNotEmpty &&
                              form.length != checklist.length) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Гүйцэт бөглөнө үү'),
                            ));
                            return;
                          }

                          final response = await ref
                              .read(formControllerProvider.notifier)
                              .submit(jid, form);

                          if (context.mounted && response.hasValue) {
                            context.pop();
                          }
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: formController.isLoading
                      ? const SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text('Хадгалах'),
                ),
              ),
            )
          ],
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
    );
  }
}
