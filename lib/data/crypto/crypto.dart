import 'package:stacktrace_parser/data/crypto/crypto_manager.dart';
import 'package:stacktrace_parser/domain/stacktrace_models.dart';

/// Helper class for handling cryptographic operations.
class Crypto {
  final CryptoManager cryptoManager = CryptoManager();

  /// Encrypting a stack trace.
  /// [result] The stack trace to encrypt.
  /// [password] The password to encrypt with.
  Future<ParseResult> encryptParseResult(ParseResult result, String password) async {
    // Encrypting the raw StackTrace String.
    final String encryptedRawStackTrace = await cryptoManager.encrypt(result.rawStackTrace, password);
    // Encrypting the relevant Lines.
    final List<StackTraceLine> encryptedRelevantLines = [];
    for (final StackTraceLine line in result.relevantLines) {
      final String encryptedLine = await cryptoManager.encrypt(line.text, password);
      encryptedRelevantLines.add(StackTraceLine(lineNumber: line.lineNumber, text: encryptedLine));
    }
    return ParseResult(relevantLines: encryptedRelevantLines, rawStackTrace: encryptedRawStackTrace);
  }

  /// Decrypting a stack trace.
  /// [result] the encrypted stack trace to decrypt.
  /// [password] The password to decrypt with.
  Future<ParseResult> decryptParseResult(ParseResult result, String password) async {
    // Decrypting the raw StackTrace String.
    final String decryptedRawStackTrace = await cryptoManager.decrypt(result.rawStackTrace, password);
    // Decrypting the relevant Lines.
    final List<StackTraceLine> decryptedRelevantLines = [];
    for (final StackTraceLine line in result.relevantLines) {
      final String decryptedLine = await cryptoManager.decrypt(line.text, password);
      decryptedRelevantLines.add(StackTraceLine(lineNumber: line.lineNumber, text: decryptedLine));
    }
    return ParseResult(relevantLines: decryptedRelevantLines, rawStackTrace: decryptedRawStackTrace);
  }
}
