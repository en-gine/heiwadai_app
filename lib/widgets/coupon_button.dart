import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import "package:intl/intl.dart";

import 'package:heiwadai_app/models/coupon_item.dart';

class CouponButton extends StatelessWidget {
  const CouponButton({
    super.key,
    required this.name,
    required this.expire,
    required this.type,
  });
  final String name;
  final DateTime expire;
  final CouponType type;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy年MM月dd日', "ja_JP");

    return Padding(
      padding: EdgeInsets.only(top: 5.w),
      child: ElevatedButton(
        style: ButtonStyle(
          textStyle:
              MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 12.sp)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 10.w, horizontal: 15.w)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      name,
                      style: (type == CouponType.standard)
                          ? TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.sp,
                            )
                          : TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.2.sp,
                            ),
                    ),
                    Text(
                      (type == CouponType.standard) ? "割引クーポン" : "クーポン",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.6.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("有効期限："),
                    Text(dateFormat.format(expire.toLocal())),
                  ],
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/next_arrow.svg', height: 12.w),
          ],
        ),
      ),
    );
  }
}
