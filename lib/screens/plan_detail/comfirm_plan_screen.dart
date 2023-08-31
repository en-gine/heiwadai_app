import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'notes.dart';
import 'plan_detail_applied.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/border_heading.dart';
import 'package:heiwadai_app/widgets/components/contents_area.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/reservations.dart';
import 'package:heiwadai_app/data/plans.dart';

class ComfirmPlanScreen extends HookWidget {
  const ComfirmPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final storeName =
        reservations[1].stayStore.name + reservations[1].stayStore.branchName;
    final isChecked = useState<bool>(false);

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(
          title: 'ホテル予約（確認）', style: AppBarStyle.basic, menu: MenuMode.none),
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
                  ContentsArea(
                    // margin: EdgeInsets.symmetric(horizontal: 2.w),
                    // decoration: const BoxDecoration(color: Colors.white),
                    widgets: [
                      SizedBox(height: 20.w),
                      const Heading('お申し込みプラン', type: HeadingType.h2),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BorderHeading('申し込み内容'),
                            SizedBox(height: 20.w),
                            Text(
                              storeName,
                              style: TextStyle(
                                fontSize: 20.sp,
                                height: 32.sp / 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.w),
                            Text(plans[0].title),
                            SizedBox(height: 15.w),
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
                            SizedBox(height: 15.w),
                            const PlanDetailApplied(colorMode: ColorMode.light),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BorderHeading('ご宿泊者様'),
                            SizedBox(height: 20.w),
                            Table(
                              border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: Colors.white,
                                  width: 5.w,
                                ),
                              ),
                              columnWidths: Map.fromEntries([
                                MapEntry(0, FixedColumnWidth(125.w)),
                                MapEntry(1, FixedColumnWidth(210.w)),
                              ]),
                              children: [
                                buildRow('お名前', '山田 太郎\n（やまだたろう）'),
                                buildRow(
                                  'ご住所',
                                  '〒810-0001\n福岡県福岡市中央区天神１－１アーバンコート天神201',
                                ),
                                buildRow('ご連絡先', '090-7777-7777'),
                                buildRow('予約通知先', 'xxxx@xxxxxx.jp'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.w),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BorderHeading('チェックイン'),
                            SizedBox(height: 20.w),
                            Table(
                              border: TableBorder(
                                horizontalInside: BorderSide(
                                  color: Colors.white,
                                  width: 5.w,
                                ),
                              ),
                              columnWidths: Map.fromEntries([
                                MapEntry(0, FixedColumnWidth(125.w)),
                                MapEntry(1, FixedColumnWidth(210.w)),
                              ]),
                              children: [
                                buildRow('チェックイン', '19:30～'),
                                buildRow('備考', '到着が遅くなるかもしれません'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.w),
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
                            target: LatLng(33.593398396002, 130.39268288544022),
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
                      const Notes(),
                      Container(
                        margin:
                            EdgeInsets.only(top: 40.w, left: 20.w, right: 20.w),
                        padding: EdgeInsets.only(
                          top: 20.w,
                          right: 5.w,
                          bottom: 25.w,
                          left: 20.w,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        child: CheckboxListTile(
                          value: isChecked.value,
                          onChanged: (value) => isChecked.value = value!,
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Transform.translate(
                            offset: const Offset(-20, 0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: '利用規約',
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => context.push('/terms'),
                                  ),
                                  const TextSpan(text: ' ・ '),
                                  TextSpan(
                                    text: 'プライバシーポリシー',
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => context.push('/policy'),
                                  ),
                                  const TextSpan(text: 'に同意する'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.w),
                        alignment: Alignment.center,
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(240.w, 54.w),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
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
