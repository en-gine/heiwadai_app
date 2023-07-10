import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequiredFieldTitle extends StatelessWidget {
  const RequiredFieldTitle(this.text, {super.key, this.required=true});
  final String text;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          height: 22.sp / 16.sp,
          fontWeight: FontWeight.w600,
        ),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            baseline: TextBaseline.ideographic,
            child: Container(
              alignment: Alignment.center,
              width: 60.w,
              height: 26.w,
              margin: EdgeInsets.only(right: 5.w),
              decoration: BoxDecoration(
                color: (required) ? Colors.black : const Color(0xffb3b3b3),
                borderRadius: BorderRadius.circular(20.w),
              ),
              child: Text(
                (required) ? '必須' : '任意',
                style: TextStyle(
                  height: 17.sp / 14.sp,
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextSpan(text: text, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
