import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/loginAllScreen',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: "login",
        path: '/loginAllScreen',
        builder: (context, state) => const LoginAllScreen(),
      ),
    ],
  );
});
