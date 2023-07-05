import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:heiwadai_app/widgets/menu/appbar.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final mail = useState(false);
    final pass = useState(false);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo, menu: MenuMode.none),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wood.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'login screen',
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
                        decoration: const InputDecoration(
                          labelText: "メールアドレス",
                          labelStyle: TextStyle(color: Color(0xFFB3B3B3)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB3B3B3)),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          isDense: true,
                        ),
                        autofocus: true,
                        onChanged: (value) {
                          mail.value = value.isNotEmpty;
                          print('value: $value, mail: ${mail.value}');
                        },
                        onSaved: (value) => () {
                          print('$value');
                        },
                      ),
                      SizedBox(height: 5.w),
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z0-9@.+*_~/,!#$%&-]+'),
                          ),
                        ],
                        decoration: InputDecoration(
                          labelText: 'パスワード',
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
                            icon: const Icon(Icons.visibility_off),
                            onPressed: () {},
                          ),
                        ),
                        onChanged: (value) {
                          pass.value = value.isNotEmpty;
                          print('value: $value, pass: ${pass.value}');
                        },
                        onSaved: (value) => () {
                          print('$value');
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.w, bottom: 15.w),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                width: 2,
                                color: (!mail.value || !pass.value)
                                    ? const Color(0xFFB3B3B3)
                                    : Colors.black,
                              ),
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(240.w, 54.w),
                            ),
                            foregroundColor: MaterialStateProperty.all<Color>(
                              ((!mail.value || !pass.value))
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              ((!mail.value || !pass.value))
                                  ? const Color(0xFFB3B3B3)
                                  : Colors.white,
                            ),
                          ),
                          onPressed: ((!mail.value || !pass.value))
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
            ],
          ),
        ),
      ),
    );
  }
}
