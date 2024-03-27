import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:heiwadai_app/provider/token_provider.dart';
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
import 'package:heiwadai_app/screens/plan_detail/my_booking_screen.dart';
import 'package:heiwadai_app/screens/voucher_list_screen.dart';
import 'package:heiwadai_app/screens/voucher_details_screen.dart';
import 'package:heiwadai_app/screens/news_list_screen.dart';
import 'package:url_launcher/url_launcher.dart';


final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        redirect: (context, state) async {
          final tokenNotifier = ref.read(tokenProvider.notifier);
          final tokenState = tokenNotifier.state;

          if (tokenState.isTokenExpired) {
            try {
              await tokenNotifier.refreshToken();
            } catch (e) {
              return '/login'; // ログイン画面にリダイレクト
            }
          }
          // Tokenが有効な場合は、リダイレクトしない
          return null;
        },
        routes: [
          GoRoute(
            path: 'user_config',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: 'reset_pass',
            builder: (context, state) => const SearchScreen(),
          ),
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
            path: 'my_booking',
            builder: (context, state) => const MyBookingScreen(),
          ),
          GoRoute(
            path: 'voucher_list',
            builder: (context, state) => const VoucherListScreen(),
          ),
          // GoRoute(
          //   path: 'voucher_details/:id',
          //   builder: (context, state) {
          //     if (state.pathParameters['id'] == null) return const HomeScreen();
          //     return VoucherDetailsScreen(id: state.pathParameters['id']!);
          //   },
          // ),
          GoRoute(
            path: 'news_list',
            builder: (context, state) => const NewsListScreen(),
          ),
          // GoRoute(
          //   path: 'news_details/:id',
          //   builder: (context, state) {
          //     if (state.pathParameters['id'] == null) return const HomeScreen();
          //     return NewsDetailsScreen(id: state.pathParameters['id']!);
          //   },
          // ),
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
        path: '/register_pass',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final accessToken = extra?['accessToken'] as String?;
          final refreshToken = extra?['refreshToken'] as String?;
          final hasConfirmError = extra?['hasConfirmError'] as bool? ?? false;
          return RegisterPassScreen(
            accessToken: accessToken,
            refreshToken: refreshToken,
            hasConfirmError: hasConfirmError,
          );
        },
      ),
      GoRoute(
        path: '/terms',
        builder: (context, state) => const LoginScreen(),
        redirect: (context, state) async{
          await launchUrl(Uri.parse('https://heiwadai-hotel.app/term/'));
        }
      ),
      GoRoute(
        path: '/policy',
        builder: (context, state) => const LoginScreen(),
        redirect: (context, state) async{
          await launchUrl(Uri.parse('https://www.heiwadai-hotel.co.jp/privacy-policy/'));
        }
      ),
      GoRoute(
          path: '/company',
          builder: (context, state) => const LoginScreen(),
          redirect: (context, state) async{
            await launchUrl(Uri.parse('https://www.heiwadai-hotel.co.jp/company/'));
          }
      ),
    ],
  );
});
