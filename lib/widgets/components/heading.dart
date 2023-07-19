import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum HeadingType {
  h2,
  h3,
}

class Heading extends StatelessWidget {
  const Heading(this.text, {super.key, this.type, this.align});
  final String text;
  final HeadingType? type;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        fontSize: (type == HeadingType.h2) ? 24.sp : 20.sp,
        height: (type == HeadingType.h2) ? 44.sp / 24.sp : 36.sp / 20.sp,
        fontWeight: FontWeight.bold,
      ),
      // textHeightBehavior: const TextHeightBehavior(
      //   applyHeightToFirstAscent: false,
      //   applyHeightToLastDescent: false,
      // ),
    );
  }
}
