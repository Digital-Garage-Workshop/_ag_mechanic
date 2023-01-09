import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  static const routeName = '/error';

  final Exception? error;
  const ErrorPage({
    super.key,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return _ErrorPageView(
      error: error,
    );
  }
}

class _ErrorPageView extends StatelessWidget {
  final Exception? error;
  const _ErrorPageView({
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('Error: ${error.toString()}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/'),
        tooltip: 'Booking',
        child: const Icon(Icons.home),
      ),
    );
  }
}
