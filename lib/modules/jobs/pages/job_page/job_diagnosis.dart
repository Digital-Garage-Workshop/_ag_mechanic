import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobDiagnosis extends StatelessWidget {
  const JobDiagnosis({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.push('/job_diagnosis/$jid'),
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
