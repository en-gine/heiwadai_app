import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  Env._();

  static final Env instance = Env._();

  static String? _apiBaseUrl;
  static String get apiBaseURL => _apiBaseUrl ?? "http://localhost:3000";

  static String? _appStoreUrl;
  static String get appStoreUrl => _appStoreUrl ?? "";

  static String? _playStoreUrl;
  static String get playStoreUrl => _playStoreUrl ?? "";

  static String? _encrypt_key;
  static String get encrypt_key => _encrypt_key ?? "";

  static String? _testEmail;
  static String get testEmail => _testEmail ?? "";

  static String? _testPass;
  static String get testPass => _testPass ?? "";

  static String? _maxStampCount;
  static String get maxStampCount => _maxStampCount ?? "";

  static Future<void> loadEnv() async {
    await dotenv.load(fileName: ".env");
    _apiBaseUrl = dotenv.env['API_BASE_URL'];
    _appStoreUrl = dotenv.env['APP_STORE_URL'];
    _playStoreUrl = dotenv.env['PLAY_STORE_URL'];
    _encrypt_key =  dotenv.env['ENCRYPT_KEY'];
    _testEmail = dotenv.env['TEST_EMAIL'];
    _testPass = dotenv.env['TEST_PASS'];
    _maxStampCount = dotenv.env['MAX_STAMP_COUNT'];

  }
}