import 'package:flutter3_test/pages/job_page.dart';
import 'package:go_router/go_router.dart';

import 'pages/home_page.dart';
import 'pages/auth/login.dart';

// GoRouter configuration
final router = GoRouter(
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
    redirect: (context, state) {
      return null;
    });
