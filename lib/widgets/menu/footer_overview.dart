import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterOverview extends StatelessWidget {
  const FooterOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.w, bottom: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () async {
              await launchUrl(Uri.parse('https://www.heiwadai-hotel.co.jp/company/'));
            },
            child:Text(
              '運営会社',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              await launchUrl(Uri.parse('https://heiwadai-hotel.app/term/'));
            },
            child: Text(
              '利用規約',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              await launchUrl(Uri.parse('https://www.heiwadai-hotel.co.jp/privacy-policy/'));
            },
            child: Text(
              'プライバシーポリシー',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
