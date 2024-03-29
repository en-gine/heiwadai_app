import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget headindIcon(String iconName,
    {int colorCode = 0xFFF2F2F2, double? width, double? height}) {
  return Container(
    margin: EdgeInsets.only(top: 20.w),
    width: 60.w,
    height: 60.w,
    decoration: BoxDecoration(
      color: Color(colorCode),
      borderRadius: BorderRadius.circular(30.w),
    ),
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        width: width ?? 35.w,
        height: height ?? 35.w,
        colorFilter: const ColorFilter.mode(
          Colors.black,
          BlendMode.srcIn,
        ),
      ),
    ),
  );
}

class ContentsArea extends StatelessWidget {
  const ContentsArea({
    super.key,
    required this.widgets,
    this.iconName,
    this.iconWidth,
    this.iconHeight,
  });
  final List<Widget> widgets;
  final String? iconName;
  final double? iconWidth;
  final double? iconHeight;

  @override
  Widget build(BuildContext context) {
    Widget icon = (iconName != null) ? headindIcon(iconName!) : Container();

    return Container(
      margin: EdgeInsets.only(top: 15.w),
      padding: EdgeInsets.only(top: 5.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            icon,
            ...widgets,
          ],
        ),
      ),
    );
  }
}
