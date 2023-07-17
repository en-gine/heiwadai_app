import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/footer_overview.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';
import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';

import 'package:heiwadai_app/data/users.dart';

class RegisterPassScreen extends HookWidget {
  const RegisterPassScreen({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final user = users.firstWhereOrNull((user) => user.id == id);

    if (user == null) {
      return const Scaffold(body: Center(child: Text('Error:存在しないIDです。')));
    }

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
                  'PASSWORD',
                  style: TextStyle(
                    fontSize: 38.sp,
                    height: 28.sp / 38.sp,
                    fontFamily: GoogleFonts.alata().fontFamily,
                  ),
                ),
                SizedBox(height: 10.w),
                Text(
                  'パスワード設定',
                  style: TextStyle(fontSize: 12.sp, height: 16.sp / 12.sp),
                ),
                ContentsArea(
                  iconName: 'lock',
                  widgets: [
                    Container(
                      margin: EdgeInsets.only(top: 14.sp, bottom: 6.sp),
                      child: const Heading('パスワードの設定', type: HeadingType.h3),
                    ),
                    SizedBox(height: 28.w),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ご登録メールアドレス',
                            style: TextStyle(
                              height: 22.sp / 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.w),
                          Text(
                            user.mail,
                            style: TextStyle(height: 22.sp / 16.sp),
                          ),
                          SizedBox(height: 46.w),
                          const RequiredFieldTitle('パスワード'),
                          SizedBox(height: 10.w),
                          const TextInputField(
                            '新しいパスワード',
                            type: FormType.password,
                          ),
                          SizedBox(height: 10.w),
                          const TextInputField(
                            '新しいパスワード（確認）',
                            type: FormType.password,
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
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                              child: Text(
                                '保存',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  letterSpacing: 18.sp * 0.1,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    const FooterOverview(),
                    const SizedBox(height: 20),
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