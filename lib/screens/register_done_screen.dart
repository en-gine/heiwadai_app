import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/footer_overview.dart';

import 'package:heiwadai_app/widgets/components/heading.dart';

class RegisterDoneScreen extends HookWidget {
  const RegisterDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.none, menu: MenuMode.close),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wood.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: AppBar().preferredSize.height + 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: 38.sp,
                    height: 28.sp / 38.sp,
                    fontFamily: GoogleFonts.alata().fontFamily,
                  ),
                ),
                SizedBox(height: 10.w),
                Text(
                  '新規登録',
                  style: TextStyle(fontSize: 12.sp, height: 16.sp / 12.sp),
                ),
                ContentsArea(
                  iconName: 'paper_airplane',
                  iconWidth: 44.w,
                  iconHeight: 34.w,
                  widgets: [
                    Container(
                      margin: EdgeInsets.only(top: 14.w, bottom: 6.sp),
                      child:
                          const Heading('認証メールをご確認ください', type: HeadingType.h3),
                    ),
                    SizedBox(height: 28.w),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        bottom: 50.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ご登録いただいたメールアドレス宛に認証メールをお送りいたしました。',
                            style: TextStyle(height: 22.sp / 16.sp),
                          ),
                          SizedBox(height: 32.w),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                height: 22.sp / 16.sp,
                              ),
                              children: const [
                                TextSpan(
                                  text:
                                      '平和台ホテル（no-reply@heiwadai-hotel.app）からのメールをご確認ください。メールに記載された',
                                ),
                                TextSpan(
                                  text: '認証URLをクリックしてパスワードを設定',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'すると、会員登録が完了します。',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32.w),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                height: 22.sp / 16.sp,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'なお、認証メールの',
                                ),
                                TextSpan(
                                  text: '有効期限は1時間',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'です。有効期限が切れた場合再度登録が必要となりますので、ご注意ください。',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 178.w),
                          const FooterOverview(),
                        ],
                      ),
                    ),
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
