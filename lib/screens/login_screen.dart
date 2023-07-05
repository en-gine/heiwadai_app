import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';

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

    final isObscure = useState(true);

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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'login screen',
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
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@._+-]+'),
                          ),
                        ],
                        decoration: InputDecoration(
                          labelText: "メールアドレス",
                          errorText: mailError.value,
                          labelStyle: const TextStyle(color: Color(0xFFB3B3B3)),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          isDense: true,
                        ),
                        autofocus: true,
                        onChanged: (value) {
                          isMail.value = value.isNotEmpty;
                        },
                        onSaved: (value) => () {
                          print('$value');
                        },
                      ),
                      SizedBox(height: 5.w),
                      TextFormField(
                        obscureText: isObscure.value,
                        keyboardType: TextInputType.visiblePassword,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@.+*_~/,!#$%&-]+'),
                          ),
                        ],
                        decoration: InputDecoration(
                          labelText: 'パスワード',
                          errorText: passError.value,
                          labelStyle: const TextStyle(color: Color(0xFFB3B3B3)),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          isDense: true,
                          suffixIcon: IconButton(
                            icon: SvgPicture.asset(
                              isObscure.value
                                  ? 'assets/icons/visibility_on.svg'
                                  : 'assets/icons/visibility_off.svg',
                            ),
                            onPressed: () {
                              isObscure.value = !isObscure.value;
                            },
                          ),
                        ),
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
                            style: TextStyle(fontSize: 18.sp),
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
                  onTap: () {},
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
                  onPressed: () {},
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
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.w, bottom: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        '運営会社',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
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
                      onTap: () {},
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
