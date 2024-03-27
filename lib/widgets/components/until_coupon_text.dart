import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protobuf/protobuf.dart';

import '../../env.dart';

class UntilCouponText extends StatelessWidget {
  const UntilCouponText(this.currentStampCount, {super.key});
  final int? currentStampCount;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 16.sp,
          letterSpacing: 1.4,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: [
          const TextSpan(text: "クーポン獲得まであと"),
          TextSpan(
            text: '${() {
              if (currentStampCount == null) {
                return Env.maxStampCount;
              }
              return parseLongInt(Env.maxStampCount) - currentStampCount!;
            }()}',
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextSpan(text: "回スタンプ"),
        ],
      ),
    );
  }
}
