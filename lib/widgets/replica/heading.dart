import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum HeadingType {
  h2,
  h3,
}

class Heading extends StatelessWidget {
  const Heading( this.text, {super.key, this.type});
  final String text;
  final HeadingType? type;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: (type == HeadingType.h2) ? 24.sp : 20.sp,
        height: (type == HeadingType.h2) ? 1.85 : 1.8,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
