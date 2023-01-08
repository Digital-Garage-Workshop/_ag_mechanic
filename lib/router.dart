import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'modules/auth/pages/login.page.dart';
import 'modules/jobs/pages/job_page.dart';
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
    redirect: (context, state) {
      return null;
    },
  );
}
