import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heiwadai_app/widgets/contents_area.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';
import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';

class RegisterInputScreen extends HookWidget {
  const RegisterInputScreen({super.key, this.title});
  final String? title;

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
                  '基本情報',
                  style: TextStyle(fontSize: 12.sp, height: 16.sp / 12.sp),
                ),
                ContentsArea(
                  iconName: 'lock',
                  widgets: [
                    Container(
                      margin: EdgeInsets.only(top: 14.sp, bottom: 6.sp),
                      child: const Heading('基本情報', type: HeadingType.h3),
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
                          const RequiredFieldTitle('お名前'),
                          SizedBox(height: 10.w),
                          const TextInputField('姓', hint: '例：山田'),
                          SizedBox(height: 10.w),
                          const TextInputField('名', hint: '例：太郎'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 200),
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
