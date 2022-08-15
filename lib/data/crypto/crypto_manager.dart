import 'dart:convert';
import 'dart:math';
import 'package:cryptography/cryptography.dart';

class CryptoManager {
  static int get keyLength => 256;
  static int get iterationLength => 2500;
  static String get delimiter => ']';
  static final Random _random = Random.secure();

  Future<String> decrypt(String ciphertext, String password) async {
    final List<String> fields = ciphertext.split(delimiter);
    if (fields.length != 3) {
      throw InvalidPasswordException;
    }
    final List<int> salt = base64.decode(fields[0]);
    final List<int> iv = base64.decode(fields[1]);
    final List<int> ciphertextBytes = base64.decode(fields[2]);
    final SecretKey key = await generateKey(salt, password);

    try {
      final algorithm = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);
      final SecretBox box = SecretBox(ciphertextBytes, nonce: iv, mac: Mac.empty);
      final cipher = await algorithm.decrypt(box, secretKey: key);
      return String.fromCharCodes(cipher);
    } catch (e) {
      throw InvalidPasswordException;
    }
  }

  Future<String> encrypt(String plaintext, SecretKey key, List<int> salt) async {
    try {
      final AesCbc algorithm = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);
      final List<int> iv = await generateIv(algorithm.nonceLength);
      final SecretBox box = await algorithm.encrypt(plaintext.codeUnits, nonce: iv, secretKey: key);
      return '${base64.encode(salt)}$delimiter${base64.encode(iv)}$delimiter${base64.encode(box.cipherText)}';
    } catch (e) {
      throw Exception('Invalid plaintext');
    }
  }

  Future<List<int>> generateIv(int length) async {
    return List.generate(length, (_) => _random.nextInt(256));
  }

  Future<SecretKey> generateKey(List<int> salt, String password) {
    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac(Sha512()),
      iterations: iterationLength,
      bits: keyLength,
    );
    final SecretKey key = SecretKey(utf8.encode(password));
    return pbkdf2.deriveKey(secretKey: key, nonce: salt);
  }

  Future<List<int>> generateSalt() async {
    return List.generate(8, (_) => _random.nextInt(256));
  }

  Future<String> getSHA1(String input) async {
    final algorithm = Sha1();
    final digest = await algorithm.hash(utf8.encode(input));
    return base64.encode(digest.bytes);
  }
}

class InvalidCipherTextException implements Exception {}

class InvalidPasswordException implements Exception {}
