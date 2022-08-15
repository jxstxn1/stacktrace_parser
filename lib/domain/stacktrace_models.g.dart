// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stacktrace_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParseResult _$$_ParseResultFromJson(Map<String, dynamic> json) => _$_ParseResult(
      relevantLines: (json['relevantLines'] as List<dynamic>)
          .map((e) => StackTraceLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      rawStackTrace: json['rawStackTrace'] as String,
    );

Map<String, dynamic> _$$_ParseResultToJson(_$_ParseResult instance) => <String, dynamic>{
      'relevantLines': instance.relevantLines,
      'rawStackTrace': instance.rawStackTrace,
    };

_$_StackTraceLine _$$_StackTraceLineFromJson(Map<String, dynamic> json) => _$_StackTraceLine(
      lineNumber: json['lineNumber'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_StackTraceLineToJson(_$_StackTraceLine instance) => <String, dynamic>{
      'lineNumber': instance.lineNumber,
      'text': instance.text,
    };

_$_DatabaseParseResult _$$_DatabaseParseResultFromJson(Map<String, dynamic> json) => _$_DatabaseParseResult(
      parseResult: ParseResult.fromJson(json['parseResult'] as Map<String, dynamic>),
      isEncrypted: json['isEncrypted'] as bool,
    );

Map<String, dynamic> _$$_DatabaseParseResultToJson(_$_DatabaseParseResult instance) => <String, dynamic>{
      'parseResult': instance.parseResult,
      'isEncrypted': instance.isEncrypted,
    };
