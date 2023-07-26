import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum DayType {
  weekday(Colors.white),
  dayoff(Color(0xfff2f2f2)),
  selected(Color(0xff599fe0)),
  inrange(Color(0xffbcd9f3)),
  ;

  const DayType(this.color);
  final Color color;
}

class DayCalendar extends HookWidget {
  const DayCalendar(
    this.day, {
    super.key,
    required this.type,
    this.minPrice,
    this.maxPrice,
  });

  final int? day;
  final DayType type;
  final int? minPrice;
  final int? maxPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47.w,
      // height: 47.w,
      height: 40.w,
      // padding: EdgeInsets.symmetric(vertical: 4.w),
      decoration: (day == null) ? null : BoxDecoration(color: type.color),
      child: (day == null)
          ? Container()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day.toString(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                // SizedBox(
                //   height: 24.w,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Text(
                //         "¥10,000", // minPrice.toString(),
                //         style: TextStyle(fontSize: 8.sp, height: 1.2),
                //       ),
                //       Text(
                //         "〜¥20,000", // maxPrice.toString(),
                //         style: TextStyle(fontSize: 8.sp, height: 1.2),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
    );
  }
}
