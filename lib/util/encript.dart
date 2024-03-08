import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../env.dart';
class EncryptionUtils {

  static String encryptString(String plainText) {
    final key = utf8.encode(Env.encrypt_key);
    final bytes = utf8.encode(plainText);

    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);

    return base64Encode(digest.bytes);
  }

  static String decryptString(String encrypted) {
    final key = utf8.encode(Env.encrypt_key);
    final bytes = base64Decode(encrypted);

    final hmacSha256 = Hmac(sha256, key);
    final digest = hmacSha256.convert(bytes);

    return utf8.decode(digest.bytes);
  }
}
