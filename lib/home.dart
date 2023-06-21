import 'package:flutter/material.dart';

import 'package:heiwadai_app/widgets/appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo, topMargin: 10.w),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wood.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}