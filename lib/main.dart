import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

var colorScheme = ColorScheme.fromSeed(seedColor: Colors.white);

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
        theme: ThemeData().copyWith(
          colorScheme: colorScheme,
          useMaterial3: true,
          appBarTheme: const AppBarTheme().copyWith(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
