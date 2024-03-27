import 'package:encrypt/encrypt.dart';

import '../env.dart';

class EncryptionUtils {
  static final _key = Key.fromUtf8(Env.encrypt_key);
  static final _iv = IV.allZerosOfLength(16);

  static String encryptString(String plainText) {
    final encrypter = Encrypter(AES(_key));
    final encrypted = encrypter.encrypt(plainText, iv: _iv);
    return encrypted.base64;
  }

  static String decryptString(String encryptedText) {
    final encrypter = Encrypter(AES(_key));
    final decrypted = encrypter.decrypt64(encryptedText, iv: _iv);
    return decrypted;
  }
}