import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CouponStyle { basic, large }

class CouponButton extends StatelessWidget {
  const CouponButton({super.key, required this.title, required this.dateText, this.style});
  final String title;
  final String dateText;
  final CouponStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
                    title,
                    style: (style == CouponStyle.large)
                        ? TextStyle(fontSize: 22.sp)
                        : TextStyle(fontSize: 20.sp),
                  ),
                  Text("割引クーポン", style: TextStyle(fontSize: 16.sp)),
                ],
              ),
              Row(
                children: [
                  const Text("有効期限："),
                  Text(dateText),
                ],
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset('assets/icons/next_arrow.svg', width: 12.w),
        ],
      ),
    );
  }
}
