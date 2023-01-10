import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '/common/providers/job_service.provider.dart';

final fetchCheckListProvider = FutureProvider((ref) async {
  final jobService = ref.watch(jobServiceProvider);
  final list = await jobService.fetchJobHistory("1");

  return list;
});
final formProvider = StateProvider<Map<String, String?>>((ref) {
  return {};
});

class JobDiagnosisForm extends ConsumerWidget {
  const JobDiagnosisForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(fetchCheckListProvider);
    final form = ref.watch(formProvider);

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
                child: Text('Ерөнхий үзлэг'),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: ModalScrollController.of(context),
                child: list.when(
                  data: (data) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Table(
                            border: TableBorder.all(),
                            defaultColumnWidth: const FlexColumnWidth(1),
                            columnWidths: const {0: FlexColumnWidth(2.5)},
                            children: [
                              const TableRow(children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 2,
                                    ),
                                    child: Center(
                                      child: Text('Үзлэг'),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 2,
                                    ),
                                    child: Center(
                                      child: Text('Хэвийн'),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 2,
                                    ),
                                    child: Center(
                                      child: Text('Хэвийн бус'),
                                    ),
                                  ),
                                ),
                              ]),
                              // TableRow(children: [
                              //   const TableCell(
                              //     child: SizedBox(),
                              //   ),
                              //   TableCell(
                              //     child: Checkbox(
                              //       visualDensity: const VisualDensity(
                              //         horizontal: 0,
                              //         vertical: -4,
                              //       ),
                              //       value: form.values.contains("normal"),
                              //       onChanged: (value) {
                              //         final currentState =
                              //             ref.read(formProvider.notifier).state;
                              //         ref.read(formProvider.notifier).state =
                              //             Map.of(currentState
                              //               ..addAll({check: "normal"}));
                              //       },
                              //     ),
                              //   ),
                              //   TableCell(
                              //     child: Checkbox(
                              //       visualDensity: const VisualDensity(
                              //         horizontal: 0,
                              //         vertical: -4,
                              //       ),
                              //       value: form.values.contains("not_normal"),
                              //       onChanged: (value) {
                              //         final currentState =
                              //             ref.read(formProvider.notifier).state;
                              //         ref.read(formProvider.notifier).state =
                              //             Map.of(currentState
                              //               ..addAll({check: "not_normal"}));
                              //       },
                              //     ),
                              //   ),
                              // ]),
                              ...[
                                "Урд наклад",
                                "Урд тоормосны диск (Пиланз)",
                                "Хойд наклад",
                                "Хойд тоормосны диск (Пиланз)",
                                "Дугуйн хээ",
                                "Шил арчигчийн резин",
                                "Шил арчигчийн шингэн",
                                "Тоормосны шингэний түвшин",
                                "Хөдөлгүүрийн тосны түвшин",
                                "Хөргөлтийн шингэний түвшин",
                                "Холын гэрэл",
                                "Ойрын гэрэл",
                                "Манангийн гэрэл (урд)",
                                "Оврын гэрэл (урд)",
                                "Дохионы гэрэл (урд)",
                                "Тоормосны гэрэл",
                                "Оврын гэрэл (хойд)",
                                "Дохионы гэрэл (хойд)",
                                "Ухрахын гэрэл",
                                "Улсын дугаарын гэрэл",
                                "Манангийн гэрэл (хойд)",
                              ].map((check) => TableRow(children: [
                                    TableCell(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 2,
                                        ),
                                        child: Text(check),
                                      ),
                                    ),
                                    TableCell(
                                      child: Transform.scale(
                                        scale: 1.5,
                                        child: Checkbox(
                                          visualDensity: const VisualDensity(
                                            horizontal: 0,
                                            vertical: -4,
                                          ),
                                          value: form[check] == "normal",
                                          onChanged: (value) {
                                            final currentState = ref
                                                .read(formProvider.notifier)
                                                .state;
                                            ref
                                                .read(formProvider.notifier)
                                                .state = Map.of(currentState
                                              ..addAll({check: "normal"}));
                                          },
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Transform.scale(
                                        scale: 1.5,
                                        child: Checkbox(
                                          visualDensity: const VisualDensity(
                                            horizontal: 0,
                                            vertical: -4,
                                          ),
                                          value: form[check] == "not_normal",
                                          onChanged: (value) {
                                            final currentState = ref
                                                .read(formProvider.notifier)
                                                .state;
                                            ref
                                                .read(formProvider.notifier)
                                                .state = Map.of(currentState
                                              ..addAll({check: "not_normal"}));
                                          },
                                        ),
                                      ),
                                    ),
                                  ]))
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () => context.pop(),
                            child: const Text('Хадгалах'),
                          )
                        ],
                      ),
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
