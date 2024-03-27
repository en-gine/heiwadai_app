
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:heiwadai_app/feature/anon_auth.dart';
import 'package:heiwadai_app/widgets/menu/appbar.dart';
import 'package:heiwadai_app/widgets/menu/footer_overview.dart';
import 'package:heiwadai_app/widgets/components/form/text_input_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../feature/auth.dart';
import '../provider/rest_client.dart';
import '../provider/token_provider.dart';
import '../util/encript.dart';
import '../widgets/components/dialog.dart';
import '../widgets/components/snack_bar.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final formKey = useMemoized(() => GlobalKey<FormState>());
    final allowLoginSaveCheck = useState<bool>(false);

    final mailInput = useState("");
    final isMail = useState(false);
    final mailController = useTextEditingController();
    final mailError = useState<String?>(null);

    final passInput = useState("");
    final isPass = useState(false);
    final passController = useTextEditingController();
    final passError = useState<String?>(null);

    useEffect(() {
      Future.microtask(() async {
        // ユーザー登録途中で離脱したユーザーの処理
        final prefs = await SharedPreferences.getInstance();
        final registerEmail = prefs.getString('register_email');
        if (registerEmail != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('エラー'),
                  content: const Text('メール認証の認証とパスワードの設定が必要な状態です。登録を完了してください。'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('再送信'),
                      onPressed: () async {
                        try{
                          await ref.watch(anonAuthClientProvider).resendInviteMail(registerEmail);
                        }catch(e){
                          if (!context.mounted) return;
                          modalDialog(
                            context,
                            'エラー',
                            'メールの再送に失敗しました。時間をおいて再度お試しください。',
                            yesText: 'OK',
                          );
                          return;
                        }
                      },
                    ),
                    TextButton(
                      child: const Text('登録を削除'),
                      onPressed: () async {
                        try{
                          await ref.watch(anonAuthClientProvider).deleteUnderRegisterUser(registerEmail);
                        }catch(e){
                          if (!context.mounted) return;
                          modalDialog(
                            context,
                            'エラー',
                            '登録情報の削除に失敗しました。時間をおいて再度お試しください。',
                            yesText: 'OK',
                          );
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


        // ローカルストレージからメールアドレスとパスワードを取得
        final encryptedEmail = prefs.getString('login_email');
        final encryptedPassword = prefs.getString('login_password');
        if (encryptedEmail != null) {
          mailInput.value = EncryptionUtils.decryptString(encryptedEmail);
          isMail.value = true;
          mailController.text = mailInput.value;
        }
        if (encryptedPassword != null){
          passInput.value = EncryptionUtils.decryptString(encryptedPassword);
          isPass.value = true;
          passController.text = passInput.value;
        }

        allowLoginSaveCheck.value = prefs.getBool('allow_login_save') ?? false;

        // 保持されたトークンが有効であれば、HOMEにリダイレクトする
        final token = await ref.read(tokenProvider.notifier).loadTokenState();
        if (token?.accessToken != null && token?.refreshToken != null) {
          final awaitedContext = context;
          await ref.watch(authClientProvider).refresh(token!.accessToken!,  token.refreshToken!).then((p0) =>
              awaitedContext.push('/')
          ).onError((error, stackTrace) => debugPrint('Refresh failed: $error'));
          return;
        }
      });
      return;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(style: AppBarStyle.logo, menu: MenuMode.none),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wood.png'),
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: AppBar().preferredSize.height + 50.w, bottom: 30.w),
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
                // key: formKey,
                child: Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
                  child: Column(
                    children: [
                      TextInputField(
                        'メールアドレス',
                        errorText: mailError.value,
                        type: FormType.email,
                        initialValue: mailInput.value,
                        controller: mailController,
                        onChanged: (value) {
                          isMail.value = value.isNotEmpty;
                          mailInput.value = value;
                        },
                      ),
                      SizedBox(height: 5.w),
                      TextInputField(
                        'パスワード',
                        errorText: passError.value,
                        type: FormType.password,
                        controller: passController,
                        onChanged: (value) {
                          isPass.value = value.isNotEmpty;
                          passInput.value = value;
                        },
                      ),
                      Container(
                        margin:
                        EdgeInsets.only(top: 10.w, left: 40.w, right: 20.w),
                        padding: EdgeInsets.only(
                          right: 5.w,
                          left: 10.w,
                        ),
                        child: CheckboxListTile(
                          value: allowLoginSaveCheck.value,
                          onChanged: (value) => allowLoginSaveCheck.value = value!,
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsets.zero,
                          title: Transform.translate(
                            offset: const Offset(-10, 0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'ログイン情報を保存する',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.w),
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
                          onPressed: (!isMail.value || !isPass.value)
                              ? null
                              : () async {
                            final BuildContext asyncContext = context; // contextをローカル変数に保存
                            try {
                              await ref.watch(anonAuthClientProvider).signIn( mailInput.value, passInput.value);
                              // await ref.watch(anonAuthClientProvider).signIn( Env.testEmail, Env.testPass);
                              if (!asyncContext.mounted) return; // ここでウィジェットがまだマウントされているかチェック
                              // 結果を表示する
                              showCustomSnackBar(context: asyncContext, message: 'サインインしました。');
                              // ローカルストレージにメールアドレスとパスワードを保存
                              final prefs = await SharedPreferences.getInstance();
                              if (allowLoginSaveCheck.value) {
                                prefs.setString('login_email', EncryptionUtils.encryptString(mailInput!.value));
                                prefs.setString('login_password',  EncryptionUtils.encryptString(passInput!.value));
                              }else{
                                prefs.remove('login_email');
                                prefs.remove('login_password');
                              }
                              prefs.setBool('allow_login_save', allowLoginSaveCheck.value);
                              if (!asyncContext.mounted) return;
                              asyncContext.push('/');
                            } on ServerException catch (e, s) {
                              // エラーを表示する
                              String modalMessage = '';
                              switch (e.statusCode) {
                                case ServerErrorStatusCode.unauthenticated:
                                case ServerErrorStatusCode.invalidArgument:
                                  modalMessage = 'メールアドレスまたはパスワードが間違っています。';
                                    break;
                                default:
                                  modalMessage = '通信エラーなどによりサインインが出来ませんでした。';
                                  debugPrint('Sign in failed: $e');
                                  debugPrint('Stack Trace: $s');
                                  break;
                              }
                              modalDialog(
                                asyncContext,
                                'エラー',
                                modalMessage,
                                yesText: 'OK',
                              );
                            } catch (e, s) {
                              // エラーを表示する
                              debugPrint('Sign in failed: $e');
                              debugPrint('StackTrace: $s');
                              modalDialog(
                                asyncContext,
                                'エラー',
                                '不明な内部／通信エラーなどにより登録出来ませんでした。\n時間をおいて再度お試しくか、お問合せよりご連絡ください。',
                                yesText: 'OK',
                              );
                            }
                          },
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
