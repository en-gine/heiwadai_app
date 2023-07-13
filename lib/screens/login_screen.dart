import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/footer_overview.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final isMail = useState(false);
    final mailError = useState<String?>(null);

    final isPass = useState(false);
    final passError = useState<String?>(null);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo, menu: MenuMode.none),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wood.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: AppBar().preferredSize.height + 30.w, bottom: 30.w),
                width: double.infinity,
                height: 290.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 25.w),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.sp,
                          height: 50.sp / 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: 'ホテル予約'),
                          TextSpan(
                            text: 'も',
                            style: TextStyle(fontSize: 30.sp),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.sp,
                          height: 50.sp / 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          const TextSpan(text: 'クーポン'),
                          TextSpan(
                            text: 'も',
                            style: TextStyle(fontSize: 30.sp),
                          ),
                          const TextSpan(text: '!'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.w),
                    Text(
                      'QRコードでスタンプを押して',
                      style: TextStyle(height: 28.sp / 16.sp),
                    ),
                    Text(
                      'おトクなクーポンを手に入れよう！',
                      style: TextStyle(height: 28.sp / 16.sp),
                    ),
                    SizedBox(height: 14.w),
                    SvgPicture.asset(
                      'assets/icons/login_head.svg',
                      height: 60.w,
                    ),
                  ],
                ),
              ),
              Form(
                key: formKey,
                child: Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
                  child: Column(
                    children: [
                      TextInputField(
                        'メールアドレス',
                        errorText: mailError.value,
                        type: FormType.email,
                        onChanged: (value) {
                          isMail.value = value.isNotEmpty;
                        },
                        onSaved: (value) => () {
                          print('$value');
                        },
                      ),
                      SizedBox(height: 5.w),
                      TextInputField(
                        'パスワード',
                        errorText: passError.value,
                        type: FormType.password,
                        onChanged: (value) {
                          isPass.value = value.isNotEmpty;
                        },
                        onSaved: (value) => () {
                          print('$value');
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.w),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                width: 2,
                                color: (!isMail.value || !isPass.value)
                                    ? const Color(0xFFB3B3B3)
                                    : Colors.black,
                              ),
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(240.w, 54.w),
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              ((!isMail.value || !isPass.value))
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              ((!isMail.value || !isPass.value))
                                  ? const Color(0xFFB3B3B3)
                                  : Colors.white,
                            ),
                          ),
                          onPressed: ((!isMail.value || !isPass.value))
                              ? null
                              : () => formKey.currentState!.save(),
                          child: Text(
                            'ログイン',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.w, bottom: 30.w),
                child: GestureDetector(
                  onTap: () => context.push('/forget_pass'),
                  child: Text(
                    'パスワードを忘れた方',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.w),
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
              const FooterOverview(),
            ],
          ),
        ),
      ),
    );
  }
}
