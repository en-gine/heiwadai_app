import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/coupon_button.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/coupons.dart';
import 'package:heiwadai_app/data/stores.dart';

Widget stamp(String image, String date) {
  return Container(
    width: 85.w,
    height: 85.w,
    alignment: Alignment.topCenter,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 10.w),
      child: Text(
        date,
        style: TextStyle(
          fontSize: 10.sp,
          height: 22.sp / 10.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class VoucherListScreen extends StatelessWidget {
  const VoucherListScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(title: 'クーポン', style: AppBarStyle.basic),
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
                  SizedBox(height: 10.w),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.w)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 20,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 15.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.w),
                                  child: const Heading("チェックイン履歴"),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        stamp(
                                          'assets/images/wood.png',
                                          "2023/10/12",
                                        ),
                                        SizedBox(width: 10.w),
                                        stamp(
                                          'assets/images/wood.png',
                                          "2023/10/12",
                                        ),
                                        SizedBox(width: 10.w),
                                        stamp(
                                          'assets/images/wood.png',
                                          "2023/10/12",
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        stamp(
                                          'assets/images/wood.png',
                                          "2023/10/12",
                                        ),
                                        SizedBox(width: 10.w),
                                        stamp(
                                          'assets/images/wood.png',
                                          "2023/10/12",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10.w),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 16.sp,
                          letterSpacing: 1.4,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: "クーポン獲得まであと"),
                          TextSpan(
                            text: '3',
                            style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(text: "回スタンプ"),
                        ]),
                  ),
                  ContentsArea(
                    widgets: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5.w),
                              child: const Heading("使えるクーポン"),
                            ),
                            for (final coupon in coupons)
                              CouponButton(
                                name: coupon.name,
                                expire: coupon.expire,
                                type: coupon.couponType,
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
                              padding: EdgeInsets.only(bottom: 5.w),
                              child: const Heading("クーポン利用対象店"),
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
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
