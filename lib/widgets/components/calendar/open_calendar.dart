import 'package:flutter/material.dart';

// import "package:intl/intl.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/widgets/components/calendar/month_calendar.dart';

Widget calendar() {
  DateTime now = DateTime.now().toLocal();
  return SingleChildScrollView(
    child: Column(
      children: [
        MonthCalendar(now.month),
        MonthCalendar(now.month + 1),
        MonthCalendar(now.month + 2),
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
