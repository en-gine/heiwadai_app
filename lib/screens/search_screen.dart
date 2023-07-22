import 'package:flutter/material.dart';

import "package:intl/intl.dart";
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart' as hooks;

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/plan_card.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/reservations.dart';

import 'package:heiwadai_app/models/store.dart';

class HotelItem extends hooks.HookWidget {
  const HotelItem({super.key, required this.hotel});

  final Store hotel;

  @override
  Widget build(BuildContext context) {
    final isSelected = hooks.useState(false);

    return GestureDetector(
      onTap: () => isSelected.value = !isSelected.value,
      child: Container(
        width: 164.9.w,
        height: 60.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
        decoration: BoxDecoration(
          color: (isSelected.value) ? const Color(0xfff2f2f2) : Colors.white,
          border: Border.all(
            width: 2,
            color: (isSelected.value) ? Colors.black : const Color(0xffb3b3b3),
          ),
          borderRadius: BorderRadius.circular(5.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 11.sp,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: hotel.name),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: hotel.branchName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      // height: 20.sp / 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              hotel.accessInfo,
              style: TextStyle(fontSize: 11.sp, height: 1.8),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy/MM/dd', "ja_JP");

    List<Store> hotels =
        stores.where((store) => store.stayAble == true).toList();

    Widget hotelList = const SizedBox(height: 10);

    if (hotels.isNotEmpty) {
      hotelList = Container(
        margin: EdgeInsets.fromLTRB(20.w, 25.w, 20.w, 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16.sp,
                  // height: 1.3,
                  height: 22.sp / 16.sp,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "検索するホテルを選択（",
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    text: "2",
                    style: TextStyle(
                      fontSize: 24.sp,
                      height: 22.sp / 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(text: "店舗選択中）"),
                ],
              ),
            ),
            SizedBox(height: 10.w),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 4.99.w,
              runSpacing: 5.w,
              children: [
                for (final hotel in hotels) HotelItem(hotel: hotel),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(title: '空室検索', style: AppBarStyle.basic),
      endDrawer: MyDrawer(stores),
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
                  Container(
                      // margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Form(
                        child: Column(
                          children: [
                            hotelList,
                            Container(
                              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.w),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: '日付を選択',
                                      prefixIcon: SvgPicture.asset(
                                        'assets/icons/calendar.svg',
                                        width: 20.93.w,
                                      ),
                                      prefixIconConstraints:
                                          BoxConstraints(minWidth: 38.w),
                                      border: const UnderlineInputBorder(),
                                      contentPadding: EdgeInsets.all(9.w),
                                      isDense: true,
                                    ),
                                  ),
                                  SizedBox(height: 20.w),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: '人数を選択',
                                      prefixIcon: SvgPicture.asset(
                                        'assets/icons/people.svg',
                                        width: 18.38.w,
                                      ),
                                      prefixIconConstraints:
                                          BoxConstraints(minWidth: 38.w),
                                      border: const UnderlineInputBorder(),
                                      contentPadding: EdgeInsets.all(9.w),
                                      isDense: true,
                                    ),
                                  ),
                                  SizedBox(height: 20.w),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FilledButton.icon(
                                        icon: SvgPicture.asset(
                                          'assets/icons/parameter.svg',
                                          width: 22.86.w,
                                        ),
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            const Color(0xffdadada),
                                          ),
                                          minimumSize:
                                              MaterialStateProperty.all<Size>(
                                            Size(165.w, 46.w),
                                          ),
                                        ),
                                        onPressed: () {},
                                        label: const Text("条件を追加"),
                                      ),
                                      FilledButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Colors.black,
                                          ),
                                          minimumSize:
                                              MaterialStateProperty.all<Size>(
                                            Size(165.w, 46.w),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text("検索"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      const Spacer(),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            height: 28.sp / 16.sp,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: '1～10',
                              style: TextStyle(
                                fontSize: 22.sp,
                                height: 28.sp / 22.sp,
                              ),
                            ),
                            WidgetSpan(
                              child: SizedBox(width: 3.w),
                            ),
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: SvgPicture.asset(
                                  'assets/icons/slash.svg',
                                  width: 11.w,
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: SizedBox(width: 3.w),
                            ),
                            TextSpan(text: '${reservations.length}件'),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                    ],
                  ),
                  for (final reservation in reservations)
                    PlanCard(
                      storeName:
                          '${reservation.stayStore.name}${reservation.stayStore.branchName}',
                      title: reservation.reservedPlan.title,
                      summary:
                          "${reservation.reservedPlan.mealType.displayName}／${reservation.reservedPlan.smokeType.displayName}／${reservation.reservedPlan.roomType.displayName}",
                      price: reservation.reservedPlan.price,
                      useDay: reservation.checkOutDate
                              .toLocal()
                              .difference(reservation.checkInDate.toLocal())
                              .inDays +
                          1,
                      imageUrl: "https://placehold.jp/150x180.png",
                    ),
                  SizedBox(height: 100.w),
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
