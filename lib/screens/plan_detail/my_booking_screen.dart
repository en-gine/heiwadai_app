import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
import "package:intl/intl.dart";

import 'notes.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/booking_card.dart';
import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/reservations.dart';
import 'package:heiwadai_app/data/stores.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormatPlan = DateFormat('yyyy/MM/dd', "ja_JP");

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(title: '予約確認', style: AppBarStyle.basic),
      endDrawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wood.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Heading('ご予約一覧', type: HeadingType.h2),
                  SizedBox(height: 5.w),
                  for (final reservation in reservations)
                    BookingCard(
                      title: reservation.reservedPlan.title,
                      summary:
                          "${reservation.reservedPlan.mealType.displayName}／${reservation.reservedPlan.smokeType.displayName}／${reservation.reservedPlan.roomType.displayName}",
                      imageUrl: reservation.reservedPlan.imageURL,
                      // 宿泊場所
                      storeName:
                          '${reservation.stayStore.name}${reservation.stayStore.branchName}',
                      // 宿泊人数
                      people: "1",
                      // 宿泊日
                      startDate: dateFormatPlan
                          .format(reservation.checkInDate.toLocal()),
                      endDate: dateFormatPlan
                          .format(reservation.checkOutDate.toLocal()),
                      // 宿泊日数
                      useDay: reservation.checkOutDate
                          .difference(reservation.checkInDate)
                          .inDays,
                    ),
                  const ContentsArea(
                    widgets: [
                      Notes(),
                      SizedBox(height: 100),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavi(),
    );
  }
}
