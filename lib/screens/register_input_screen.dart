import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';
import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';

class RegisterInputScreen extends HookWidget {
  const RegisterInputScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    const prefectures = [
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
    ];
    final selectedValue = useState<String?>(null);
    final isSwitched = useState<bool>(true);
    final isChecked = useState<bool>(false);

    final formKey = useMemoized(() => GlobalKey<FormState>());

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
          child: Form(
            key: formKey,
            child: Container(
              margin:
                  EdgeInsets.only(top: AppBar().preferredSize.height + 30.w),
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
                    iconName: 'people',
                    iconWidth: 30.w,
                    iconHeight: 32.64.w,
                    widgets: [
                      Container(
                        margin: EdgeInsets.only(top: 14.w, bottom: 6.sp),
                        child: const Heading('基本情報', type: HeadingType.h3),
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
                            const RequiredFieldTitle('お名前'),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '姓',
                              type: FormType.text,
                              hint: '例：山田',
                            ),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '名',
                              type: FormType.text,
                              hint: '例：太郎',
                            ),
                            SizedBox(height: 20.w),
                            const RequiredFieldTitle('ふりがな'),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              'せい',
                              type: FormType.ruby,
                              hint: '例：やまだ',
                            ),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              'めい',
                              type: FormType.ruby,
                              hint: '例：たろう',
                            ),
                            SizedBox(height: 20.w),
                            const RequiredFieldTitle('会社名', required: false),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '会社名',
                              type: FormType.text,
                              hint: '例：サンプル株式会社',
                            ),
                            SizedBox(height: 20.w),
                            const RequiredFieldTitle('生年月日', required: false),
                            SizedBox(height: 10.w),
                            const TextInputField('生年月日', type: FormType.date),
                            SizedBox(height: 10.w),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/info_exclamation.svg',
                                  width: 30.w,
                                  height: 30.w,
                                ),
                                SizedBox(width: 5.w),
                                Expanded(
                                  child: Text(
                                    '「お誕生日クーポン」などのご利用が可能になります。ぜひご登録ください。',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      height: 20.sp / 14.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.w,
                          left: 20.w,
                          right: 20.w,
                          bottom: 50.w,
                        ),
                        decoration:
                            const BoxDecoration(color: Color(0xFFF2F2F2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: headindIcon(
                              'home',
                              colorCode: 0xffffffff,
                              width: 33.w,
                              height: 30.w,
                            )),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(bottom: 6.sp),
                              child: const Heading('ご住所', type: HeadingType.h3),
                            ),
                            Text(
                              '登録しておくと、ご予約時に入力が省けて便利です。',
                              style: TextStyle(height: 22.sp / 16.sp),
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('郵便番号', required: false),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '郵便番号',
                              type: FormType.text,
                              hint: '1230000',
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('都道府県'),
                            SizedBox(height: 10.w),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              width: double.infinity,
                              height: 54.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: const Color(0xffdadada)),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.w),
                                ),
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: Container(),
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                                value: selectedValue.value,
                                items: prefectures
                                    .map(
                                      (list) => DropdownMenuItem(
                                        value: list,
                                        child: Text(list),
                                      ),
                                    )
                                    .toList(),
                                hint: const Text(
                                  '選択してください',
                                  style: TextStyle(color: Color(0xffb3b3b3)),
                                ),
                                onChanged: (value) =>
                                    selectedValue.value = value.toString(),
                              ),
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('市区町村', required: false),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '市区町村',
                              type: FormType.text,
                              hint: '例：福岡市中央区',
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('番地マンション名',
                                required: false),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '番地マンション名',
                              type: FormType.text,
                              hint: '例：舞鶴1-5-6',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10.w,
                          left: 20.w,
                          right: 20.w,
                          bottom: 40.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: headindIcon(
                              'mail',
                              width: 28.w,
                              height: 20.w,
                            )),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(bottom: 6.sp),
                              child:
                                  const Heading('ご連絡先', type: HeadingType.h3),
                            ),
                            Text(
                              'ご入力のメールアドレスがログインIDとなります。',
                              style: TextStyle(height: 22.sp / 16.sp),
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('メールアドレス'),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              'メールアドレス',
                              type: FormType.email,
                              hint: '例：email@example.com',
                            ),
                            SizedBox(height: 28.w),
                            const RequiredFieldTitle('電話番号', required: false),
                            SizedBox(height: 10.w),
                            const TextInputField(
                              '電話番号',
                              type: FormType.phone,
                              hint: '例：0901234000',
                            ),
                            SizedBox(height: 30.w),
                            Row(
                              children: [
                                Text(
                                  'メルマガの配信を希望する',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Switch(
                                  value: isSwitched.value,
                                  onChanged: (value) =>
                                      isSwitched.value = value,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.only(
                          top: 20.w,
                          right: 5.w,
                          bottom: 25.w,
                          left: 20.w,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfff2f2f2),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        child: CheckboxListTile(
                          value: isChecked.value,
                          onChanged: (value) => isChecked.value = value!,
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Transform.translate(
                            offset: const Offset(-20, 0),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: '利用規約',
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => context.push('/terms'),
                                  ),
                                  const TextSpan(text: ' ・ '),
                                  TextSpan(
                                    text: 'プライバシーポリシー',
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => context.push('/policy'),
                                  ),
                                  const TextSpan(text: 'に同意する'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.w),
                      Container(
                        margin: EdgeInsets.only(bottom: 40.w),
                        child: FilledButton(
                          onPressed: () => context.push('/register_input'),
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(240.w, 54.w),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            '無料で新規登録',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
