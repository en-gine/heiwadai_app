import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/screens/home_screen.dart';
import 'package:heiwadai_app/screens/login_screen.dart';

final authProvider = Provider((ref) => (
      isAuth: false,
      isLoading: false,
      hasError: false,
    ));

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
    redirect: (context, state) {
      if (authState.isLoading || authState.hasError) return null;

      return authState.isAuth ? null : '/login';
    },
  );
});
