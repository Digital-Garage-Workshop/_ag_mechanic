import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'diagnosis_form.dart';

class JobDiagnosisPage extends StatelessWidget {
  const JobDiagnosisPage({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => context.pop(),
        ),
        title: const Text('Ерөнхий үзлэг'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            JobDiagnosisForm(jid: jid),
          ],
        ),
      ),
    );
  }
}
