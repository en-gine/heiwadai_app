import 'package:flutter/material.dart';

import "package:intl/intl.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:heiwadai_app/widgets/components/calendar/month_calendar.dart';

import 'package:heiwadai_app/models/calendar.dart';
import 'package:heiwadai_app/provider/reservation.dart';

Widget calendar(ReservationMode res) {
  DateTime now = DateTime.now().toLocal();
  return SingleChildScrollView(
    child: Column(
      children: [
        MonthCalendar(now.month, res),
        MonthCalendar(now.month + 1, res),
        MonthCalendar(now.month + 2, res),
        SizedBox(height: 200.w),
      ],
    ),
  );
}

class BottomConfirmForm extends ConsumerWidget {
  const BottomConfirmForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormat = DateFormat('yyyy/MM/dd', "ja_JP");
    final start = ref.watch(startProvider);
    final end = ref.watch(endProvider);

    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        width: double.infinity,
        height: 142.w,
        padding: EdgeInsets.fromLTRB(20.w, 10.w, 20.w, 20.w),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 130.w,
                  height: 48.w,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "チェックイン",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (start != null) ? dateFormat.format(start) : "---",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 140.w,
                  height: 38.w,
                  padding: EdgeInsets.symmetric(horizontal:10.w),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: const Color(0xffb3b3b3),
                        width: 1.w,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "チェックアウト",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (end != null) ? dateFormat.format(end) : "---",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 65.w,
                  height: 38.w,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(horizontal:10.w),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: const Color(0xffb3b3b3),
                        width: 1.w,
                      ),
                    ),
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      height: 28.sp / 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(text: "全"),
                      (start != null && end != null)
                          ? TextSpan(
                              text: (end.difference(start).inDays + 1).toString(),
                            )
                          : const TextSpan(text: "-"),
                      const TextSpan(text: "泊"),
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(height: 10.w),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(240.w, 54.w),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("保存"),
            ),
          ],
        ),
      ),
    );
  }
}

void openCalendar(BuildContext context, ReservationMode res) {
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
          Stack(children: [
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
              child: calendar(res),
            ),
            const BottomConfirmForm(),
          ]),
        ],
      );
    },
  );
}
