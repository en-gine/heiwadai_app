import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import "package:intl/intl.dart";

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/coupon_button.dart';
import 'package:heiwadai_app/widgets/plan_card.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/replica/heading.dart';

import 'package:heiwadai_app/data/coupons.dart';
import 'package:heiwadai_app/data/posts.dart';
import 'package:heiwadai_app/data/stores.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('yyyy.MM.dd', "ja_JP");

    Widget couponList = const SizedBox(height: 10);
    Widget postList = const SizedBox(height: 10);

    if (coupons.isNotEmpty) {
      couponList = Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.w),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                SizedBox(
                  height: 50.w,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "SEE MORE",
                            style: TextStyle(
                              fontSize: 14.sp,
                              height: 1.1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SvgPicture.asset(
                            'assets/icons/next_arrow.svg',
                            height: 12.w,
                            colorFilter: const ColorFilter.mode(
                              Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    if (posts.isNotEmpty) {
      postList = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, bottom: 10.w),
            child: const Heading("お知らせ"),
          ),
          for (final post in posts)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 6.w),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dateFormat.format(post.postDate.toLocal()),
                            style: const TextStyle(fontSize: 16)),
                        Text(
                          post.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ]),
                ),
              ],
            ),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(style: AppBarStyle.logo),
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
                  SizedBox(height: 5.w),
                  const Heading('ご予約中のプラン'),
                  const PlanCard(
                    title: "平和台ホテル天神",
                    startDate: "2023/12/20",
                    endDate: "2023/12/20",
                    people: "1",
                    summary: "朝食なし夕食あり／禁煙／セミダブル",
                    // priceText: "¥1000",
                    imageUrl: "https://placehold.jp/150x150.png",
                  ),
                  SizedBox(height: 5.w),
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
                      couponList,
                      postList,
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
