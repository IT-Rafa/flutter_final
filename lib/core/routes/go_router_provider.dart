import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/login_all_screen.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: "splash",
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: "login",
        path: '/login',
        builder: (context, state) => const LoginAllScreen(),
      ),
    ],
  );
});
