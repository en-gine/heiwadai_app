import 'package:flutter/material.dart';

import "package:intl/intl.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/widgets/components/heading.dart';
import 'package:heiwadai_app/widgets/components/reservation/day_calendar.dart';

import 'package:heiwadai_app/models/calendar.dart';
import 'package:heiwadai_app/provider/reservation.dart';


class MonthCalendar extends ConsumerWidget {
  const MonthCalendar(this.month, this.res, {super.key});

  final int month;
  final ReservationMode res;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // DateTime now = DateTime.now().toLocal();
    DateTime now = DateTime.now();
    DateTime requestedDate = DateTime(now.year, month);
    List weeks = ["日", "月", "火", "水", "木", "金", "土"];

    final start = ref.watch(startProvider);
    final end = ref.watch(endProvider);

    DayType getDayType(DateTime date) {
      var dayType =
          date.weekday == DateTime.saturday || date.weekday == DateTime.sunday
              ? DayType.dayoff
              : DayType.weekday;

      final ymd = DateFormat('yyyyMMdd');
      if (ymd.format(date) != ymd.format(now) && date.isBefore(now)) {
        return DayType.before;
      }

      if (start != null) {
        if (start == date) {
          dayType = DayType.selected;
        } else if (end != null) {
          if (end == date) {
            dayType = DayType.selected;
          } else if (date.isAfter(start) && date.isBefore(end)) {
            dayType = DayType.inrange;
          }
        }
      }
      return dayType;
    }

    return Column(
      children: [
        Heading(
          DateFormat('yyyy年MM月', "ja_JP").format(requestedDate),
          type: HeadingType.h3,
        ),
        SizedBox(height: 5.w),
        Table(
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
                    date = requestedDate.add(
                        Duration(days: i * 7 + j - requestedDate.weekday + 1));
                    if (date.month != requestedDate.month) return Container();
                    return DayCalendar(
                      // date.day,
                      date,
                      type: getDayType(date),
                      res: res,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.w),
      ],
    );
  }
}
