import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:cryptography/cryptography.dart';

const int keyLength = 32;
const int ivLength = 12;
const int tagLength = 16;
const int saltLength = 16;
const int keyIterationsCount = 10000;

class CryptoManager {
  /// Encrypts passed [cleartext] with key generated based on [password] argument
  Future<String> encrypt(String cleartext, String password) async {
    final salt = randomBytes(saltLength);
    final iv = randomBytes(ivLength);
    final key = await deriveKey(password, salt);
    final algorithm = AesGcm.with256bits();

    final secretBox = await algorithm.encrypt(
      utf8.encode(cleartext),
      secretKey: key,
      nonce: iv,
    );

    final List<int> result = salt + secretBox.nonce + secretBox.cipherText + secretBox.mac.bytes;

    return hex.encode(result);
  }

  /// Decrypts passed [ciphertext] with key generated based on [password] argument
  Future<String> decrypt(String cipherText, String password) async {
    final cText = hex.decode(cipherText);
    final salt = cText.sublist(0, saltLength);
    final iv = cText.sublist(saltLength, saltLength + ivLength);
    final mac = cText.sublist(cText.length - tagLength);
    final text = cText.sublist(saltLength + ivLength, cText.length - tagLength);

    final algorithm = AesGcm.with256bits();
    final key = await deriveKey(password, salt);

    final secretBox = SecretBox(text, nonce: iv, mac: Mac(mac));

    final cleartext = await algorithm.decrypt(
      secretBox,
      secretKey: key,
    );

    return utf8.decode(cleartext);
  }

  /// Password Based Key Deriviation function
  Future<SecretKey> deriveKey(String password, List<int> salt) async {
    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac.sha512(),
      iterations: keyIterationsCount,
      bits: keyLength * 8,
    );

    final SecretKey secret = await pbkdf2.deriveKey(
      secretKey: SecretKey(utf8.encode(password)),
      nonce: salt,
    );

    return secret;
  }

  /// Generates a random byte sequence of given [length]
  Uint8List randomBytes(int length) {
    final Uint8List buffer = Uint8List(length);
    final Random range = Random.secure();

    for (int i = 0; i < length; i++) {
      buffer[i] = range.nextInt(256);
    }

    return buffer;
  }
}

class InvalidCipherTextException implements Exception {}

class InvalidPasswordException implements Exception {}
