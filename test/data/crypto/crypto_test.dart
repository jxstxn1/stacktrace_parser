import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stacktrace_parser/data/crypto/crypto.dart';
import 'package:stacktrace_parser/data/stacktace/stacktrace_parser.dart';
import 'package:stacktrace_parser/domain/stacktrace_models.dart';

void main() {
  test('Should encrypt and afterwards decrypt a stack trace.', () async {
    final stopwatch = Stopwatch()..start();
    final Crypto crypto = Crypto();
    const String password = 'password';
    final stacktrace = File('test/resources/stacktrace1.txt').readAsStringSync();
    final result = parseStackTrace(stacktrace);
    final ParseResult encryptedResult = await crypto.encryptParseResult(result, password);
    final ParseResult decryptedResult = await crypto.decryptParseResult(encryptedResult, password);
    expect(decryptedResult.rawStackTrace, result.rawStackTrace);
    expect(decryptedResult.relevantLines, result.relevantLines);
    debugPrint('Encryption and decryption executed in ${stopwatch.elapsed}');
  });
}
