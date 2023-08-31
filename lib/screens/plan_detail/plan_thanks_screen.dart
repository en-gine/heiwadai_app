import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';

import 'notes.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/drawer.dart';
import 'package:heiwadai_app/widgets/menu/appbar_bottom.dart';
import 'package:heiwadai_app/widgets/components/contents_area.dart';

import 'package:heiwadai_app/data/stores.dart';

class PlanThanksScreen extends StatelessWidget {
  const PlanThanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: MyAppBar(
          title: 'ホテル予約（完了）', style: AppBarStyle.basic, menu: MenuMode.none),
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
                    iconName: 'schedule',
                    iconWidth: 31.64.w,
                    widgets: [
                      SizedBox(height: 10.w),
                      const Heading('ご予約を受け付けました。', type: HeadingType.h3),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20.w, 25.w, 20.w, 30.w),
                        child: Column(
                          children: [
                            RichText(
                                text: TextSpan(
                              style: TextStyle(
                                fontSize: 16.sp,
                                height: 22.sp / 16.sp,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(text: 'ご予約ありがとうございます。'),
                                TextSpan(
                                  text: '宿泊料金は現地ホテルにてお支払い',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: 'ください。'),
                              ],
                            )),
                            Text(
                              'また、下記メールアドレスに予約確認メールを送らせて頂いておりますので、ご確認くださいませ。',
                              style: TextStyle(
                                fontSize: 16.sp,
                                height: 22.sp / 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ご予約通知メールアドレス',
                              style: TextStyle(
                                height: 22.sp / 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 15.w),
                            Text(
                              'email@example.com',
                              style: TextStyle(
                                fontSize: 16.sp,
                                height: 22.sp / 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.w),
                      const Notes(),
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
