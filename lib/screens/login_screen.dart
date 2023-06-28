import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/widgets/appbar.dart';
import 'package:heiwadai_app/widgets/coupon_button.dart';
import 'package:heiwadai_app/widgets/plan_card.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/replica/heading.dart';

import 'package:heiwadai_app/data/coupons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    Widget couponList = const SizedBox(height: 10);

    if (coupons.isNotEmpty) {
      couponList = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "使えるクーポン",
            style: TextStyle(
                fontSize: 16.sp, fontWeight: FontWeight.bold, height: 2.25),
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
              TextButton(
                onPressed: () {},
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "SEE MORE",
                        style: TextStyle(
                          fontSize: 14.sp,
                          height: 0.8,
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
            ],
          ),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wood.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 80),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Heading('login 日本語の表示テスト'),
                const PlanCard(
                  title: "平和台ホテル天神",
                  startDate: "2023/12/20",
                  endDate: "2023/12/20",
                  people: "1",
                  summary: "朝食なし夕食あり／禁煙／セミダブル",
                  // priceText: "¥1000",
                  imageUrl: "https://placehold.jp/150x150.png",
                ),
                ContentsArea(
                  widgets: [
                    couponList,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
