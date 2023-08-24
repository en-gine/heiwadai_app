import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';
import 'package:heiwadai_app/widgets/components/border_heading.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BorderHeading('注意事項'),
          SizedBox(height: 15.w),
          const Text('チェックイン時間', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10.w),
          RichText(text: TextSpan(
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              height: 20.sp / 16.sp,
            ),
            children: const [
              TextSpan(text: '変更がある場合は、'),
              TextSpan(text: '必ず宿泊ホテルまでご連絡', style: TextStyle(color: Color(0xFFe05959))),
              TextSpan(text: 'ください。'),
            ],
          )),
          SizedBox(height: 20.w),
          const Text('駐車場について', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10.w),
          RichText(text: TextSpan(
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              height: 20.sp / 16.sp,
            ),
            children: const [
              TextSpan(text: '駐車場は完全予約制', style: TextStyle(color: Color(0xFFe05959))),
              TextSpan(text: 'です。宿泊ホテルまで事前にご連絡下さい。ご連絡がない場合はご利用いただけない場合がございます。'),
            ],
          )),
          SizedBox(height: 20.w),
          const Text('乳幼児について', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10.w),
          RichText(text: TextSpan(
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              height: 20.sp / 16.sp,
            ),
            children: const [
              TextSpan(text: '乳幼児の添い寝には別途料金', style: TextStyle(color: Color(0xFFe05959))),
              TextSpan(text: 'を頂戴しております。事前に施設までご連絡ください。'),
            ],
          )),
        ],
      ),
    );
  }
}
