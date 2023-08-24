import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';
import 'package:heiwadai_app/widgets/components/form/dropdown_builder.dart';
import 'package:heiwadai_app/widgets/components/border_heading.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlanDetailForms extends StatelessWidget {
  const PlanDetailForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const BorderHeading('ご予約'),
          Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BorderHeading('ご宿泊者様'),
                SizedBox(height: 15.w),
                const RequiredFieldTitle('お名前'),
                SizedBox(height: 10.w),
                const TextInputField('姓'),
                SizedBox(height: 10.w),
                const TextInputField('名'),
                SizedBox(height: 20.w),
                const RequiredFieldTitle('ふりがな'),
                SizedBox(height: 10.w),
                const TextInputField('せい'),
                SizedBox(height: 10.w),
                const TextInputField('めい'),
                /* -------------------------------- */
                SizedBox(height: 40.w),
                const BorderHeading('ご住所'),
                SizedBox(height: 15.w),
                const RequiredFieldTitle('郵便番号', required: false),
                SizedBox(height: 10.w),
                const TextInputField('郵便番号',
                    hint: '00000000', type: FormType.number),
                SizedBox(height: 10.w),
                const RequiredFieldTitle('都道府県', required: false),
                SizedBox(height: 10.w),
                const DropdownBuilder<String>(
                  [
                    '選択してください',
                    '北海道',
                    '青森県',
                    '岩手県',
                    '宮城県',
                    '秋田県',
                    '山形県',
                    '福島県',
                    '茨城県',
                    '栃木県',
                    '群馬県',
                    '埼玉県',
                    '千葉県',
                    '東京都',
                    '神奈川県',
                    '新潟県',
                    '富山県',
                    '石川県',
                    '福井県',
                    '山梨県',
                    '長野県',
                    '岐阜県',
                    '静岡県',
                    '愛知県',
                    '三重県',
                    '滋賀県',
                    '京都府',
                    '大阪府',
                    '兵庫県',
                    '奈良県',
                    '和歌山県',
                    '鳥取県',
                    '島根県',
                    '岡山県',
                    '広島県',
                    '山口県',
                    '徳島県',
                    '香川県',
                    '愛媛県',
                    '高知県',
                    '福岡県',
                    '佐賀県',
                    '長崎県',
                    '熊本県',
                    '大分県',
                    '宮崎県',
                    '鹿児島県',
                    '沖縄県',
                  ],
                  '選択してください',
                ),
                SizedBox(height: 10.w),
                const RequiredFieldTitle('市区町村', required: false),
                SizedBox(height: 10.w),
                const TextInputField('市区町村'),
                SizedBox(height: 10.w),
                const RequiredFieldTitle('番地マンション名', required: false),
                SizedBox(height: 10.w),
                const TextInputField('番地/マンション名'),
                SizedBox(height: 10.w),
                /* -------------------------------- */
                SizedBox(height: 40.w),
                const BorderHeading('ご連絡先'),
                SizedBox(height: 15.w),
                const RequiredFieldTitle('電話番号'),
                SizedBox(height: 10.w),
                const TextInputField('電話番号',
                    type: FormType.phone, hint: '09012340000'),
                SizedBox(height: 10.w),
                const RequiredFieldTitle('予約通知メールアドレス'),
                SizedBox(height: 10.w),
                const TextInputField(
                  '予約通知メールアドレス',
                  type: FormType.email,
                  hint: 'email@example.com',
                ),
                SizedBox(height: 10.w),
                /* -------------------------------- */
                SizedBox(height: 40.w),
                const BorderHeading('チェックイン'),
                SizedBox(height: 15.w),
                const RequiredFieldTitle('チェックイン時間'),
                SizedBox(height: 10.w),
                DropdownBuilder<DateTime>(
                  [
                    DateTime(DateTime.now().year, 1, 1, 15),
                    DateTime(DateTime.now().year, 1, 2, 1)
                  ],
                  DateTime(DateTime.now().year, 1, 1, 15),
                ),
                SizedBox(height: 10.w),
                const RequiredFieldTitle('備考', required: false),
                SizedBox(height: 10.w),
                const TextInputField('', type: FormType.multiline),
                SizedBox(height: 20.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
