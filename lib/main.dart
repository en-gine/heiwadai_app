import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heiwadai_app/router.dart';

void main() {
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
}
