import 'package:go_router/go_router.dart';
import 'package:heiwadai_app/screens/home_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
