import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:go_router/go_router.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';

class ForgetPassScreen extends HookWidget {
  const ForgetPassScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo, menu: MenuMode.none),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wood.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'パスワードの再設定',
                style: TextStyle(fontSize: 12.sp, height: 16.sp / 12.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
