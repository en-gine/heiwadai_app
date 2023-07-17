import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:intl/intl.dart";

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/stores.dart';
import 'package:heiwadai_app/data/coupons.dart';

import 'package:heiwadai_app/models/coupon_item.dart';

Widget activateCoupon(String id) {
  return Container(
    height: 122.w,
    padding: EdgeInsets.only(top: 10.w, right: 20.w, bottom: 20.w, left: 20.w),
    alignment: Alignment.topCenter,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: [
        Text(
          'ボタンを押さずにスタッフへ提示ください',
          style: TextStyle(
            fontSize: 16.sp,
            height: 28.sp / 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.w),
        FilledButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              Size(240.w, 54.w),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
          child: Text(
            '使用済にする',
            style: TextStyle(
              fontSize: 18.sp,
              letterSpacing: 18.sp * 0.1,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

class VoucherDetailsScreen extends StatelessWidget {
  const VoucherDetailsScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy年MM月dd日', "ja_JP");
    final coupon = coupons.firstWhereOrNull((user) => user.id == id);

    if (coupon == null) {
      return const Scaffold(
        body: Center(
          child: Text('クーポンが見つかりませんでした'),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(style: AppBarStyle.none, menu: MenuMode.close),
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
            margin: const EdgeInsets.only(top: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10.w),
                  Container(
                    width: 180.w,
                    height: 180.w,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(90.w),
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/present_box.svg',
                          width: 50.w,
                          height: 50.w,
                        ),
                        SizedBox(height: 14.w),
                        SizedBox(
                          width: 140.w,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 24.sp,
                                height: 34.sp / 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: coupon.name,
                                  style: TextStyle(
                                    fontSize: (coupon.couponType ==
                                            CouponType.standard)
                                        ? 40.sp
                                        : 35.sp,
                                    height: 40.sp / 40.sp,
                                  ),
                                ),
                                TextSpan(
                                    text: (coupon.couponType ==
                                            CouponType.standard)
                                        ? "割引クーポン"
                                        : "クーポン"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.w),
                  SizedBox(
                    width: 220.w,
                    child: Text(
                      "有効期限：${dateFormat.format(coupon.expire.toLocal())}",
                      style: TextStyle(
                        height: 28.sp / 16.sp,
                        letterSpacing: 16.sp * 0.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 220.w,
                    child: Text(
                      "併用　　：${(coupon.isCombinationable == true) ? '可' : '不可'}",
                      style: TextStyle(
                        height: 28.sp / 16.sp,
                        letterSpacing: 16.sp * 0.1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ContentsArea(
                    widgets: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.w),
                              child: const Heading("ご利用方法"),
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    letterSpacing: 1.4,
                                    color: Colors.black,
                                  ),
                                  children: const [
                                    TextSpan(text: "こちらの画面をスタッフに提示いただき、"),
                                    TextSpan(
                                      text: '割引適用後に「使用済にする」ボタンを押して',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: "ください。"),
                                  ]),
                            ),
                            SizedBox(height: 15.w),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("※",
                                    style: TextStyle(height: 28.sp / 16.sp)),
                                Expanded(
                                  child: Text("平和台ホテル大手門店のランチではご使用頂けません。",
                                      style: TextStyle(height: 28.sp / 16.sp)),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.w),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("※",
                                    style: TextStyle(height: 28.sp / 16.sp)),
                                Expanded(
                                  child: Text("押し間違いによる再発行は致しかねます。ご注意ください。",
                                      style: TextStyle(height: 28.sp / 16.sp)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.w),
                              child: const Heading("クーポン利用対象店"),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: stores.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    margin: EdgeInsets.only(bottom: 5.w),
                                    padding: EdgeInsets.only(left: 10.w),
                                    decoration: const BoxDecoration(
                                      color: Color(0xfff2f2f2),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(stores[index].name),
                                        const Spacer(),
                                        SizedBox(
                                          width: 25.w,
                                          height: 40.w,
                                          child: IconButton(
                                            iconSize: 20.w,
                                            padding: EdgeInsets.zero,
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              'assets/icons/map.svg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 25.w,
                                          height: 40.w,
                                          child: IconButton(
                                            iconSize: 12.w,
                                            padding: EdgeInsets.zero,
                                            constraints: const BoxConstraints(),
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              'assets/icons/arrow_right.svg',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              },
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      SizedBox(height: 122.w),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: activateCoupon(id),
    );
  }
}
