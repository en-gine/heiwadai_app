import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:heiwadai_app/widgets/components/calendar/day_calendar.dart';

class MonthCalendar extends HookWidget {
  const MonthCalendar(this.month, {super.key});

  final int month;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now().toLocal();
    DateTime requestedDate = DateTime(now.year, month);
    List weeks = ["日", "月", "火", "水", "木", "金", "土"];

    return Table(
      border: TableBorder.all(
        color: Colors.white,
        width: 1,
        style: BorderStyle.solid,
      ),
      children: [
        TableRow(children: [
          for (var index = 0; index < weeks.length; index++)
            Container(
              width: 47.w,
              height: 18.w,
              padding: EdgeInsets.symmetric(vertical: 4.w),
              decoration: BoxDecoration(
                color: index >= 5 ? Colors.black : const Color(0xffd9d9d9),
              ),
              child: Text(
                weeks[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: index >= 5 ? Colors.white : Colors.black,
                  height: 1.1,
                ),
              ),
            ),
        ]),
        ...List.generate(
          ((31 + requestedDate.weekday - 1) / 7).ceil(),
          (i) => TableRow(
            children: List.generate(
              7,
              (j) {
                DateTime date;
                date = requestedDate
                    .add(Duration(days: i * 7 + j - requestedDate.weekday + 1));
                if (date.month != requestedDate.month) return Container();
                return DayCalendar(
                  date.day,
                  type: date.weekday == DateTime.saturday ||
                          date.weekday == DateTime.sunday
                      ? DayType.dayoff
                      : DayType.weekday,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
