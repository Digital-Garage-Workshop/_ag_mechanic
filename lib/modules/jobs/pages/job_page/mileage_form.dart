import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/common/providers/job_service.provider.dart';

class MileageForm extends ConsumerWidget {
  const MileageForm({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    final mileageController = ref.watch(mileageControllerProvider);
    final mileageUnit = ref.watch(mileageUnitProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // TODO: km vs mile
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  controller: mileageController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Гүйлт',
                    suffixIcon: TextButton(
                      onPressed: () {
                        ref.read(mileageUnitProvider.notifier).state =
                            ref.read(mileageUnitProvider.notifier).state ==
                                    MileageUnit.kilometre
                                ? MileageUnit.mile
                                : MileageUnit.kilometre;
                      },
                      child: Text(
                        mileageUnit == MileageUnit.kilometre ? 'km' : 'mile',
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: !ref.watch(formControllerProvider).isLoading
                    ? () {
                        if (formKey.currentState!.validate()) {
                          ref
                              .read(formControllerProvider.notifier)
                              .submitMileage(
                                jid: jid,
                                mileage: int.parse(mileageController.text),
                                unit: MileageUnit.kilometre,
                              );
                        }
                      }
                    : null,
                child: ref.watch(formControllerProvider).isLoading
                    ? const SizedBox(
                        height: 20.0,
                        width: 20.0,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text('Хадгалах')],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final formKeyProvider = StateProvider((ref) {
  final formKey = GlobalKey<FormState>();

  return formKey;
});
final mileageControllerProvider = Provider((_) => TextEditingController());
final mileageUnitProvider = StateProvider<MileageUnit>((ref) {
  return MileageUnit.kilometre;
});
final formControllerProvider =
    StateNotifierProvider<FormControllerNotifier, AsyncValue>((ref) {
  return FormControllerNotifier(ref);
});

class FormControllerNotifier extends StateNotifier<AsyncValue> {
  FormControllerNotifier(this.ref) : super(const AsyncData(null));

  final Ref ref;

  void submitMileage({
    required String jid,
    required int mileage,
    required MileageUnit unit,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final service = ref.watch(jobServiceProvider);
      await service.submitMileage(
        jid: jid,
        mileage: mileage,
        unit: unit,
      );
    });
  }
}
