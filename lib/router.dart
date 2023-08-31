import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/screens/login_screen.dart';
import 'package:heiwadai_app/screens/forget_pass_screen.dart';
import 'package:heiwadai_app/screens/register_input_screen.dart';
import 'package:heiwadai_app/screens/register_done_screen.dart';
import 'package:heiwadai_app/screens/register_pass_screen.dart';
import 'package:heiwadai_app/screens/home_screen.dart';
import 'package:heiwadai_app/screens/search_screen.dart';
import 'package:heiwadai_app/screens/plan_detail/plan_detail_screen.dart';
import 'package:heiwadai_app/screens/plan_detail/comfirm_plan_screen.dart';
import 'package:heiwadai_app/screens/plan_detail/plan_thanks_screen.dart';
import 'package:heiwadai_app/screens/voucher_list_screen.dart';
import 'package:heiwadai_app/screens/voucher_details_screen.dart';
import 'package:heiwadai_app/screens/news_list_screen.dart';
import 'package:heiwadai_app/screens/news_details_screen.dart';

final authProvider = Provider((ref) => (
      isAuth: true,
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
        redirect: (context, state) {
          if (authState.isLoading || authState.hasError) return null;

          return authState.isAuth ? null : '/login';
        },
        routes: [
          GoRoute(
            path: 'search',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: 'plan_detail',
            builder: (context, state) => const PlanDetailScreen(),
          ),
          GoRoute(
            path: 'comfirm_plan',
            builder: (context, state) => const ComfirmPlanScreen(),
          ),
          GoRoute(
            path: 'plan_thanks',
            builder: (context, state) => const PlanThanksScreen(),
          ),
          GoRoute(
            path: 'voucher_list',
            builder: (context, state) => const VoucherListScreen(),
          ),
          GoRoute(
            path: 'voucher_details/:id',
            builder: (context, state) {
              if (state.pathParameters['id'] == null) return const HomeScreen();
              return VoucherDetailsScreen(id: state.pathParameters['id']!);
            },
          ),
          GoRoute(
            path: 'news_list',
            builder: (context, state) => const NewsListScreen(),
          ),
          GoRoute(
            path: 'news_details/:id',
            builder: (context, state) {
              if (state.pathParameters['id'] == null) return const HomeScreen();
              return NewsDetailsScreen(id: state.pathParameters['id']!);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/forget_pass',
        builder: (context, state) => const ForgetPassScreen(),
      ),
      GoRoute(
        path: '/register_input',
        builder: (context, state) => const RegisterInputScreen(),
      ),
      GoRoute(
        path: '/register_done',
        builder: (context, state) => const RegisterDoneScreen(),
      ),
      GoRoute(
        path: '/register_pass/:id',
        builder: (context, state) {
          if (state.pathParameters['id'] == null) return const LoginScreen();
          return RegisterPassScreen(id: state.pathParameters['id']!);
        },
      ),
      GoRoute(
        path: '/terms',
        builder: (context, state) => const HomeScreen(), // 規約
      ),
      GoRoute(
        path: '/policy',
        builder: (context, state) => const HomeScreen(), // プライバシーポリシー
      ),
    ],
  );
});
