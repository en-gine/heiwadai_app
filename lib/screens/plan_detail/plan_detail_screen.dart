import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'plan_detail_forms.dart';
import 'plan_detail_applied.dart';
import 'notes.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/border_heading.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/reservations.dart';
import 'package:heiwadai_app/data/plans.dart';

import 'package:heiwadai_app/models/store.dart';

import 'package:heiwadai_app/provider/reservation.dart';

class HotelItem extends ConsumerWidget {
  const HotelItem({super.key, required this.hotel});

  final Store hotel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectHotel = ref.watch(selectHotelProvider);
    final data = selectHotel.firstWhere((item) => item.id == hotel.id);

    return GestureDetector(
      onTap: () => ref.read(selectHotelProvider.notifier).toggle(hotel.id),
      child: Container(
        width: 164.9.w,
        height: 60.w,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
        decoration: BoxDecoration(
          color: (data.active) ? const Color(0xfff2f2f2) : Colors.white,
          border: Border.all(
            width: 2,
            color: (data.active) ? Colors.black : const Color(0xffb3b3b3),
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

class PlanDetailScreen extends ConsumerWidget {
  const PlanDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeName =
        reservations[1].stayStore.name + reservations[1].stayStore.branchName;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(
          title: storeName, style: AppBarStyle.basic, menu: MenuMode.none),
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
                  Image.network(plans[0].imageURL, width: double.infinity),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 2.w),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(storeName),
                              Text(
                                plans[0].title,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  height: 32.sp / 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      height: 28.sp / 26.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      const TextSpan(text: '税込'),
                                      TextSpan(
                                        text: '¥${plans[0].price} ',
                                        style: TextStyle(
                                          fontSize: 26.sp,
                                        ),
                                      ),
                                      const TextSpan(text: '/人'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BorderHeading('プラン概要'),
                              ListView(
                                itemExtent: 31.w,
                                shrinkWrap: true,
                                padding: EdgeInsets.only(top: 0, bottom: 20.w),
                                children: [
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: 5,
                                    leading: SvgPicture.asset(
                                      'assets/icons/bed.svg',
                                      width: 20,
                                    ),
                                    title: const Text("ツイン"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: 5,
                                    leading: SvgPicture.asset(
                                      'assets/icons/meal.svg',
                                      height: 20,
                                    ),
                                    title: const Text("朝食あり / 夕食なし"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: 5,
                                    leading: SvgPicture.asset(
                                      'assets/icons/smoke.svg',
                                      height: 20,
                                    ),
                                    title: const Text("喫煙ルーム"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: 5,
                                    leading: SvgPicture.asset(
                                      'assets/icons/wifi.svg',
                                      width: 20,
                                    ),
                                    title: const Text("Wi-Fi無料"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: 5,
                                    leading: SvgPicture.asset(
                                      'assets/icons/meal.svg',
                                      height: 20,
                                    ),
                                    title: const Text("加湿空気清浄機"),
                                  ),
                                ],
                              ),
                              const Text(
                                '平和台ホテル天神店2F『長浜 まんさく鮨』で、新鮮な魚介を使ったお寿司のセットをご夕食でお召し上がりいただけるプランです！長浜鮮魚市場や姪浜魚市場から新鮮な魚を直送しているので、活きの良いぷりっぷりのネタを味わえます！まんさく鮨のイチオシは「煮穴子」。新鮮で活きたまま仕入れ、店内で捌きます。プランメニューにも含まれておりますので、ふわっふわの食感を是非ご堪能下さい！',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BorderHeading('館内設備・サービス'),
                              ListView(
                                itemExtent: 31.w,
                                shrinkWrap: true,
                                padding: EdgeInsets.only(top: 0, bottom: 20.w),
                                children: [
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: -10,
                                    leading: SvgPicture.asset(
                                      'assets/icons/circle.svg',
                                      height: 8,
                                    ),
                                    title: const Text("レストラン"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: -10,
                                    leading: SvgPicture.asset(
                                      'assets/icons/circle.svg',
                                      height: 8,
                                    ),
                                    title: const Text("クリーニングサービス"),
                                  ),
                                  ListTile(
                                    contentPadding: const EdgeInsets.all(0),
                                    horizontalTitleGap: -10,
                                    leading: SvgPicture.asset(
                                      'assets/icons/circle.svg',
                                      height: 8,
                                    ),
                                    title: const Text("自動販売機"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BorderHeading('ホテル情報'),
                              SizedBox(height: 20.w),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                ),
                                child: Image.network(
                                  'https://placehold.jp/375x170.png',
                                ),
                              ),
                              SizedBox(height: 20.w),
                              Text(
                                '平和台ホテル天神店',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  height: 36.sp / 20.sp,
                                ),
                              ),
                              SizedBox(height: 5.w),
                              Table(
                                columnWidths: Map.fromEntries([
                                  MapEntry(0, FixedColumnWidth(70.w)),
                                  MapEntry(1, FixedColumnWidth(305.w)),
                                ]),
                                children: [
                                  TableRow(
                                    children: [
                                      Text(
                                        '住所',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '〒810-0001\n福岡県福岡市中央区天神2-8-12',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(children: [
                                    Container(height: 20.w),
                                    Container(),
                                  ]),
                                  TableRow(
                                    children: [
                                      Text(
                                        '電話番号',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '092-123-4567',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(children: [
                                    Container(height: 20.w),
                                    Container(),
                                  ]),
                                  TableRow(
                                    children: [
                                      Text(
                                        '駐車場',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '5台（予約制）',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(children: [
                                    Container(height: 20.w),
                                    Container(),
                                  ]),
                                  TableRow(
                                    children: [
                                      Text(
                                        'アクセス',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '地下鉄空港線「大濠公園」駅\n徒歩8分',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          height: 20.sp / 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        SizedBox(
                          width: double.infinity,
                          height: 250.w,
                          child: GoogleMap(
                            initialCameraPosition: const CameraPosition(
                              zoom: 15,
                              target:
                                  LatLng(33.593398396002, 130.39268288544022),
                            ),
                            markers: {
                              const Marker(
                                markerId: (MarkerId('平和台ホテル天神')),
                                position:
                                    LatLng(33.593398396002, 130.39268288544022),
                              )
                            },
                          ),
                        ),
                        SizedBox(height: 10.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Text(
                              '地図アプリで見る',
                              style: TextStyle(
                                fontSize: 14.sp,
                                height: 16.sp / 14.sp,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            SvgPicture.asset(
                              'assets/icons/arrow_right.svg',
                              width: 8.w,
                            ),
                            SizedBox(width: 20.w),
                          ],
                        ),
                        SizedBox(height: 40.w),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20.w, 50.w, 20.w, 60.w),
                          decoration: const BoxDecoration(
                            color: Color(0xfff2f2f2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BorderHeading('申し込み内容'),
                              SizedBox(height: 20.w),
                              const PlanDetailApplied(
                                  colorMode: ColorMode.dark),
                            ],
                          ),
                        ),
                        const PlanDetailForms(),
                        const Notes(),
                        Container(
                          margin: EdgeInsets.only(top: 30.w),
                          alignment: Alignment.center,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(240.w, 54.w),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                            ),
                            child: Text(
                              '確認画面へ',
                              style: TextStyle(
                                fontSize: 18.sp,
                                letterSpacing: 18.sp * 0.1,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 100.w),
                      ],
                    ),
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
