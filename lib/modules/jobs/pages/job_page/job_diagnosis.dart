import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'job_diagnosis_form.dart';

class JobDiagnosis extends StatelessWidget {
  const JobDiagnosis({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => const JobDiagnosisForm(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.checklist),
                  SizedBox(width: 8),
                  Text('Ерөнхий үзлэг хийх')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
