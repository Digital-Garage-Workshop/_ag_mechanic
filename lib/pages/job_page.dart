import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key, required this.jid});

  final String jid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => context.pop(),
        ),
        title: const Text("Job"),
      ),
      body: Center(
        child: Text(jid),
      ),
    );
  }
}
