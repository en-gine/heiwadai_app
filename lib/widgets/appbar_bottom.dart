import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MyBottomNavi extends StatelessWidget implements PreferredSizeWidget {
  const MyBottomNavi({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SimpleShadow(
          opacity: 0.15,
          offset: const Offset(0, 0),
          sigma: 20,
          child: Container(
            height: 70.w,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 242, 242, 1),
              border: Border(
                top: BorderSide(color: Color.fromRGBO(179, 179, 179, 1)),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 10.w),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(
                    'assets/icons/bottom_menu_1.svg',
                    height: 70.w,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(
                    'assets/icons/bottom_menu_2.svg',
                    height: 70.w,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(
                    'assets/icons/bottom_menu_3.svg',
                    height: 70.w,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset(
                    'assets/icons/bottom_menu_4.svg',
                    height: 70.w,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 90.w,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  'assets/icons/bottom_menu_5.svg',
                  width: 85.w,
                  height: 90.w,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
