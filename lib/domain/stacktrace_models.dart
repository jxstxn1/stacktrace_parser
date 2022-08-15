import 'package:freezed_annotation/freezed_annotation.dart';

part 'stacktrace_models.freezed.dart';
part 'stacktrace_models.g.dart';

@freezed
class ParseResult with _$ParseResult {
  const factory ParseResult({
    required List<StackTraceLine> relevantLines,
    required String rawStackTrace,
  }) = _ParseResult;

  factory ParseResult.fromJson(Map<String, dynamic> json) => _$ParseResultFromJson(json);
}

@freezed
class StackTraceLine with _$StackTraceLine {
  const factory StackTraceLine({
    required int lineNumber,
    required String text,
  }) = _StackTraceLine;

  @override
  String toString() => '$lineNumber: $text';

  factory StackTraceLine.fromJson(Map<String, dynamic> json) => _$StackTraceLineFromJson(json);
}

@freezed
class DatabaseParseResult with _$DatabaseParseResult {
  const factory DatabaseParseResult({
    required ParseResult parseResult,
    required bool isEncrypted,
  }) = _DatabaseParseResult;

  factory DatabaseParseResult.fromJson(Map<String, dynamic> json) => _$DatabaseParseResultFromJson(json);
}
