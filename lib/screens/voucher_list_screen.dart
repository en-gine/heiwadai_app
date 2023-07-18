import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/coupon_button.dart';
import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'package:heiwadai_app/data/coupons.dart';
import 'package:heiwadai_app/data/stores.dart';

Widget stamp(String image, String date, {double fontSize = 10,double offset = 10}) {
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
      padding: EdgeInsets.only(top: offset.w),
      child: Text(
        date,
        style: TextStyle(
          fontSize: fontSize.sp,
          height: 22.sp / fontSize.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

class VoucherListScreen extends StatelessWidget {
  const VoucherListScreen({super.key});

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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      stamp(
                                        'assets/images/stamp_sample1.png',
                                        "2023/10/12",
                                      ),
                                      SizedBox(width: 10.w),
                                      stamp(
                                        'assets/images/stamp_sample2.png',
                                        "2023/10/12",
                                      ),
                                      SizedBox(width: 10.w),
                                      stamp(
                                        'assets/images/stamp_sample1.png',
                                        "2023/10/12",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      stamp(
                                        'assets/images/stamp_sample1.png',
                                        "2023/10/12",
                                      ),
                                      SizedBox(width: 10.w),
                                      stamp(
                                        'assets/images/stamp_sample2.png',
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
                    ),
                  ),
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
                                id: coupon.id,
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
