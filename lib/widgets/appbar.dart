import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

enum AppBarStyle { logo, basic, none }

enum LeadingButtonStyle { cancel, back, none }

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({super.key, this.title, required this.style, this.topMargin});
  final String? title;
  final double? topMargin;
  final AppBarStyle style;

  late final Widget styledTitle = Column(
    children: [
      SizedBox(height: topMargin),
      if (title != null && style == AppBarStyle.basic)
        Text(title!,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ))
      else if (style == AppBarStyle.logo)
        SimpleShadow(
          opacity: 0.25,
          offset: const Offset(0, 4),
          sigma: 3,
          child: SvgPicture.asset(
            'assets/icons/logo.svg',
            semanticsLabel: 'heiwadai hotel',
            width: 229.89.w,
            alignment: Alignment.bottomCenter,
          ),
        ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: styledTitle,
      centerTitle: true,
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.black,
          icon: SvgPicture.asset(
            'assets/icons/notifications.svg',
            semanticsLabel: 'notifications',
            height: 25.w,
          ),
          onPressed: () {},
        ),
        IconButton(
          color: Colors.black,
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            semanticsLabel: 'main menu',
            width: 25.w,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 10.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
