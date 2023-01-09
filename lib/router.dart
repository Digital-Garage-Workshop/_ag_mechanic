import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common/providers/client.provider.dart';
import 'common/providers/connectivity.provider.dart';
import 'modules/auth/pages/login.page.dart';
import 'modules/jobs/pages/job_page.dart';
import 'modules/others/pages/error.page.dart';
import 'modules/others/pages/home_page.dart';

GoRouter generateRouter(WidgetRef ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/jobs/:jid',
        builder: (context, state) => JobPage(
          jid: state.params["jid"]!,
        ),
      ),

      // AUTH
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
    ],
    redirect: (_, state) {
      final isLoggedIn = ref.read(accessTokenProvider)?.isNotEmpty ?? false;
      final isAuthRoute = ["/login"].contains(state.subloc);

      if (!isLoggedIn && !isAuthRoute) {
        return "/login";
      }
      if (isLoggedIn && isAuthRoute) {
        return "/";
      }

      return null;
    },
    refreshListenable: GoRouterRefreshStream(StreamGroup.merge([
      ref.watch(accessTokenProvider.notifier).stream,
      ref.watch(connectivityProvider.notifier).stream,
    ])),
    errorBuilder: (context, state) => ErrorPage(error: state.error),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  /// Creates a [GoRouterRefreshStream].
  ///
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
