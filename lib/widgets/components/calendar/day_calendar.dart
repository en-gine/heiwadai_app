import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/widgets/components/calendar/month_calendar.dart';

import 'package:heiwadai_app/models/calendar.dart';

enum DayType {
  before(Colors.white),
  weekday(Colors.white),
  dayoff(Color(0xfff2f2f2)),
  selected(Color(0xff599fe0)),
  inrange(Color(0xffbcd9f3)),
  ;

  const DayType(this.color);
  final Color color;
}

class DayCalendar extends ConsumerWidget {
  const DayCalendar(
    this.date, {
    super.key,
    required this.type,
    this.minPrice,
    this.maxPrice,
    required this.res,
  });

  final DateTime? date;
  final DayType type;
  final int? minPrice;
  final int? maxPrice;
  final ReservationMode res;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final start = ref.watch(startProvider);
    final end = ref.watch(endProvider);

    return GestureDetector(
      onTap: (type == DayType.before)
          ? null
          : () => {
                if (res == ReservationMode.start)
                  {
                    if (end != null && date != null && date!.isAfter(end))
                      {
                        ref.read(startProvider.notifier).state = null,
                      }
                    else
                      ref.read(startProvider.notifier).state = date,
                  }
                else
                  {
                    if (start != null && date != null && start.isAfter(date!))
                      {
                        ref.read(endProvider.notifier).state = null,
                      }
                    else
                      ref.read(endProvider.notifier).state = date,
                  }
              },
      child: Container(
        width: 47.w,
        // height: 47.w,
        height: 40.w,
        // padding: EdgeInsets.symmetric(vertical: 4.w),
        decoration: (date == null) ? null : BoxDecoration(color: type.color),
        child: (date == null)
            ? Container()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date!.day.toString(),
                    style: TextStyle(
                      color: (type == DayType.before)
                          ? const Color(0xffb3b3b3)
                          : Colors.black,
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
      ),
    );
  }
}
