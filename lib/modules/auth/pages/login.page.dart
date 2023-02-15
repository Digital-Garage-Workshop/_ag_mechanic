import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/common/providers/auth_service.provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = ref.watch(emailControllerProvider);
    final passwordController = ref.watch(passwordControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            // Container(
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(10),
            //   child: const Text(
            //     'TutorialKart',
            //     style: TextStyle(
            //         color: Colors.blue,
            //         fontWeight: FontWeight.w500,
            //         fontSize: 30),
            //   ),
            // ),
            // Container(
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(10),
            //   child: const Text(
            //     'Sign in',
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                enabled: !ref.watch(loginControllerProvider).isLoading,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                enabled: !ref.watch(loginControllerProvider).isLoading,
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     //forgot password screen
            //   },
            //   child: const Text(
            //     'Forgot Password',
            //   ),
            // ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                onPressed: !ref.watch(loginControllerProvider).isLoading
                    ? () => ref.read(loginControllerProvider.notifier).login(
                          emailController.text,
                          passwordController.text,
                        )
                    : null,
                child: ref.watch(loginControllerProvider).isLoading
                    ? const SizedBox(
                        height: 20.0,
                        width: 20.0,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text('Login'),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     const Text('Does not have account?'),
            //     TextButton(
            //       child: const Text(
            //         'Sign in',
            //         style: TextStyle(fontSize: 20),
            //       ),
            //       onPressed: () {
            //         //signup screen
            //       },
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

final emailControllerProvider =
    Provider((_) => TextEditingController(text: 'naraa@garage.mn'));
final passwordControllerProvider =
    Provider((_) => TextEditingController(text: 'Test#123'));
final loginControllerProvider =
    StateNotifierProvider<LoginControllerNotifier, AsyncValue>((ref) {
  return LoginControllerNotifier(ref);
});

class LoginControllerNotifier extends StateNotifier<AsyncValue> {
  LoginControllerNotifier(this.ref) : super(const AsyncData(null));

  final Ref ref;

  void login(String email, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final service = ref.watch(authServiceProvider);
      await service.login(email, password);
    });
  }
}
