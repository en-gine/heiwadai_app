import 'package:flutter/material.dart';

import 'package:heiwadai_app/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

var colorScheme = ColorScheme.fromSeed(seedColor: Colors.white);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
       minTextAdapt: true,
      builder: (context, child) => MaterialApp(
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
        home: const MyHomePage(title: '平和台ホテル天神'),
      ),
    );
  }
}
