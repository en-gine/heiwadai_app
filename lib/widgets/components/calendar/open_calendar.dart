import 'package:flutter/material.dart';

// import "package:intl/intl.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum DayType {
  weekday(Colors.white),
  dayoff(Color(0xfff2f2f2)),
  selected(Color(0xff599fe0)),
  inrange(Color(0xffbcd9f3)),
  ;

  const DayType(this.color);
  final Color color;
}

Widget dayCalendar(
  int? day, {
  required DayType type,
  int? minPrice,
  int? maxPrice,
}) {
  return Container(
      width: 47.w,
      height: 47.w,
      padding: EdgeInsets.symmetric(vertical: 4.w),
      decoration: (day == null) ? null : BoxDecoration(color: type.color),
      child: (day == null)
          ? Container()
          : Column(
              children: [
                Text(
                  day.toString(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: 24.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "¥10,000", // minPrice.toString(),
                        style: TextStyle(fontSize: 8.sp, height: 1.2),
                      ),
                      Text(
                        "〜¥20,000", // maxPrice.toString(),
                        style: TextStyle(fontSize: 8.sp, height: 1.2),
                      ),
                    ],
                  ),
                ),
              ],
            ));
}

Widget monthCalendar(int month) {
  DateTime now = DateTime.now().toLocal();
  DateTime requestedDate = DateTime(now.year, month);
  List weeks = ["日", "月", "火", "水", "木", "金", "土"];
  return Table(
    // border: TableBorder.all(
    //   color: Colors.white,
    //   width: 1,
    //   style: BorderStyle.solid,
    // ),
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
              return dayCalendar(
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

Widget calendar() {
  DateTime now = DateTime.now().toLocal();
  return SingleChildScrollView(
    child: Column(
      children: [
        monthCalendar(now.month),
        monthCalendar(now.month + 1),
        monthCalendar(now.month + 2),
        SizedBox(height: 200.w),
      ],
    ),
  );
}

void openCalendar(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              size: 30.w,
              color: Colors.white,
            ),
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                padding: EdgeInsets.fromLTRB(20.w, 25.w, 20.w, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.w),
                    topRight: Radius.circular(10.w),
                  ),
                ),
                child: calendar(),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 142.w,
                  decoration: const BoxDecoration(
                    color: Color(0xfff2f2f2),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 4),
                        blurRadius: 20,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "チェックイン",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          Text(
                            "チェックアウト",
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                      const Text("保存"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
  // return false;
}
