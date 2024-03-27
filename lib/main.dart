import 'dart:async';

import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:go_router/go_router.dart';
import 'env.dart';
import 'firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart';
import 'package:heiwadai_app/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Env.loadEnv();// envファイル読み込みクラスに格納
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(const ProviderScope(child: MyApp()));
}

var colorScheme = const ColorScheme.light().copyWith(
  primary: Colors.black,
  secondary: Colors.white,
  surface: Colors.white,
  background: Colors.white,
  error: Colors.red,
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    handleDeepLink(router);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        title: 'heiwadai hotel',
        theme: ThemeData(fontFamily: "Noto Sans JP").copyWith(
          colorScheme: colorScheme,
          useMaterial3: true,
          appBarTheme: const AppBarTheme().copyWith(
            elevation: 0,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            foregroundColor: Colors.black,
          ),
          drawerTheme: const DrawerThemeData().copyWith(
            backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
            surfaceTintColor: const Color.fromRGBO(242, 242, 242, 1),
            endShape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
          dialogTheme: const DialogTheme().copyWith(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            titleTextStyle: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ja", "JP"),
        ],
        routerConfig: router,
      ),
    );
  }
  void handleDeepLink(GoRouter router) async {
    // アプリが起動時にディープリンクを処理する
    final initialLink = await getInitialUri();
    if (initialLink != null) {
      _processDeepLink(router, initialLink);
    }

    // アプリが起動中にディープリンクを処理する
    linkStream.listen((String? link) {
      if (link != null) {
        _processDeepLink(router, Uri.parse(link));
      }
    }, onError: (err) {
      debugPrint('Failed to get latest link: $err');
    });
  }

  void _processDeepLink(GoRouter router, Uri uri) {
    final host = uri.host;
    final fragment = uri.fragment;

    final params = <String, String>{};
    fragment.split('&').forEach((element) {
      final keyValue = element.split('=');
      if (keyValue.length == 2) {
        params[keyValue[0]] = keyValue[1];
      }
    });
    if (params.containsKey('error')) {
        debugPrint(params['error']);
    }
    // パスとクエリパラメーターに基づいて適切な画面に遷移するなどの処理を行う
    if (host == '/register_pass') {
      router.go('/register_pass', extra: {
        'accessToken': params['accessToken'],
        'refreshToken':  params['refreshToken'],
        'hasConfirmError':  params.containsKey('error'),
      });
    }
  }
}
