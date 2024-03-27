import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heiwadai_app/feature/anon_auth.dart';
import 'package:heiwadai_app/util/encript.dart';

import 'package:heiwadai_app/widgets/components/contents_area.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/footer_overview.dart';
import 'package:heiwadai_app/widgets/components/heading.dart';
import 'package:heiwadai_app/widgets/components/form/required_field_title.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/components/dialog.dart';

class RegisterPassScreen extends HookConsumerWidget {
  const RegisterPassScreen({super.key, this.accessToken, this.refreshToken, this.hasConfirmError});
  final String? accessToken;
  final String? refreshToken;
  final bool? hasConfirmError; // メール認証エラー
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? email;

    final passInput = useState("");
    final passConfirmInput = useState("");

    useEffect(() {
      if (hasConfirmError == true) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('エラー'),
                content: const Text('メール認証の有効期限が切れているか認証に失敗しました。再度認証を行ってください。'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('メール再送'),
                    onPressed: () {
                      try {
                        ref.watch(anonAuthClientProvider).resendInviteMail(email!);
                      } catch (e) {
                        if (!context.mounted) return;
                        modalDialog(
                          context,
                          'エラー',
                          'メールの再送に失敗しました。再度登録を行ってください。',
                          yesText: 'OK',
                        );
                        return;
                      }
                    },
                  ),
                  TextButton(
                    child: const Text('登録を辞める'),
                    onPressed: () async {
                      try{
                        ref.watch(anonAuthClientProvider).deleteUnderRegisterUser(email!);
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setString('register_email', "");
                        if (!context.mounted) return;
                        context.push('/login');
                      }catch(e){
                        if (!context.mounted) return;
                        modalDialog(
                          context,
                          'エラー',
                          '登録の削除に失敗しました。',
                          yesText: 'OK',
                        );
                        context.push('/login');
                        return;
                      }
                    },
                  ),
                ],
              );
            },
          );
        });
      }
      return () async {
        // 保存してたメールの取得
        final prefs = await SharedPreferences.getInstance();
        email = prefs.getString('register_email');
      };
    }, [hasConfirmError]);


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
                            email ?? '',
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
                              onPressed: () async {
                                final awaitedContext = context;
                                if (email == null) {
                                  modalDialog(
                                    awaitedContext,
                                    'エラー',
                                    'メールアドレスが取得できませんでした。再度登録を行ってください。',
                                    yesText: 'OK',
                                  );
                                  return;
                                }
                                if (passInput.value.isEmpty) {
                                  modalDialog(
                                    awaitedContext,
                                    'エラー',
                                    'パスワードを入力してください。',
                                    yesText: 'OK',
                                  );
                                  return;
                                }
                                if (passInput.value != passConfirmInput.value) {
                                  modalDialog(
                                    awaitedContext,
                                    'エラー',
                                    'パスワードが一致しません。',
                                    yesText: 'OK',
                                  );
                                  return;
                                }

                                final prefs = await SharedPreferences.getInstance();
                                try{
                                  await ref.watch(anonAuthClientProvider).signUp(email!, passInput.value);
                                  // 登録中アドレスを削除
                                  prefs.setString('register_email',"");
                                  //ログイン情報として保持
                                  if (!context.mounted) return;
                                  modalDialog(
                                      awaitedContext,
                                      "ログイン情報の保存", "ログイン情報をアプリ内に保存しますか？\n"
                                      "次回以降ログインが簡単になります。\n"
                                      "(暗号化して保存されます。)",
                                      yesText: "保存する", noText: "保存しない",
                                      onPressed: () async {
                                      if(email != null) prefs.setString('login_email', EncryptionUtils.encryptString(email!));
                                      if(passInput.value != null) prefs.setString('login_password',  EncryptionUtils.encryptString(passInput!.value));
                                      prefs.setBool('allow_login_save', true);
                                  });
                                  if (!context.mounted) return;
                                  awaitedContext.push('/login');
                                }catch(e){
                                  if (!context.mounted) return;
                                  modalDialog(
                                    awaitedContext,
                                    'エラー',
                                    'パスワードの設定に失敗しました。',
                                    yesText: 'OK',
                                  );
                                  awaitedContext.push('/login');
                                  return;
                                }
                              },
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
