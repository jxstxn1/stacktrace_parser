// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stacktrace_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParseResult _$ParseResultFromJson(Map<String, dynamic> json) {
  return _ParseResult.fromJson(json);
}

/// @nodoc
mixin _$ParseResult {
  List<StackTraceLine> get relevantLines => throw _privateConstructorUsedError;
  String get rawStackTrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParseResultCopyWith<ParseResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseResultCopyWith<$Res> {
  factory $ParseResultCopyWith(ParseResult value, $Res Function(ParseResult) then) = _$ParseResultCopyWithImpl<$Res>;
  $Res call({List<StackTraceLine> relevantLines, String rawStackTrace});
}

/// @nodoc
class _$ParseResultCopyWithImpl<$Res> implements $ParseResultCopyWith<$Res> {
  _$ParseResultCopyWithImpl(this._value, this._then);

  final ParseResult _value;
  // ignore: unused_field
  final $Res Function(ParseResult) _then;

  @override
  $Res call({
    Object? relevantLines = freezed,
    Object? rawStackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      relevantLines: relevantLines == freezed
          ? _value.relevantLines
          : relevantLines // ignore: cast_nullable_to_non_nullable
              as List<StackTraceLine>,
      rawStackTrace: rawStackTrace == freezed
          ? _value.rawStackTrace
          : rawStackTrace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ParseResultCopyWith<$Res> implements $ParseResultCopyWith<$Res> {
  factory _$$_ParseResultCopyWith(_$_ParseResult value, $Res Function(_$_ParseResult) then) =
      __$$_ParseResultCopyWithImpl<$Res>;
  @override
  $Res call({List<StackTraceLine> relevantLines, String rawStackTrace});
}

/// @nodoc
class __$$_ParseResultCopyWithImpl<$Res> extends _$ParseResultCopyWithImpl<$Res>
    implements _$$_ParseResultCopyWith<$Res> {
  __$$_ParseResultCopyWithImpl(_$_ParseResult _value, $Res Function(_$_ParseResult) _then)
      : super(_value, (v) => _then(v as _$_ParseResult));

  @override
  _$_ParseResult get _value => super._value as _$_ParseResult;

  @override
  $Res call({
    Object? relevantLines = freezed,
    Object? rawStackTrace = freezed,
  }) {
    return _then(_$_ParseResult(
      relevantLines: relevantLines == freezed
          ? _value._relevantLines
          : relevantLines // ignore: cast_nullable_to_non_nullable
              as List<StackTraceLine>,
      rawStackTrace: rawStackTrace == freezed
          ? _value.rawStackTrace
          : rawStackTrace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParseResult implements _ParseResult {
  const _$_ParseResult({required final List<StackTraceLine> relevantLines, required this.rawStackTrace})
      : _relevantLines = relevantLines;

  factory _$_ParseResult.fromJson(Map<String, dynamic> json) => _$$_ParseResultFromJson(json);

  final List<StackTraceLine> _relevantLines;
  @override
  List<StackTraceLine> get relevantLines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relevantLines);
  }

  @override
  final String rawStackTrace;

  @override
  String toString() {
    return 'ParseResult(relevantLines: $relevantLines, rawStackTrace: $rawStackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParseResult &&
            const DeepCollectionEquality().equals(other._relevantLines, _relevantLines) &&
            const DeepCollectionEquality().equals(other.rawStackTrace, rawStackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_relevantLines),
      const DeepCollectionEquality().hash(rawStackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_ParseResultCopyWith<_$_ParseResult> get copyWith =>
      __$$_ParseResultCopyWithImpl<_$_ParseResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParseResultToJson(
      this,
    );
  }
}

abstract class _ParseResult implements ParseResult {
  const factory _ParseResult({required final List<StackTraceLine> relevantLines, required final String rawStackTrace}) =
      _$_ParseResult;

  factory _ParseResult.fromJson(Map<String, dynamic> json) = _$_ParseResult.fromJson;

  @override
  List<StackTraceLine> get relevantLines;
  @override
  String get rawStackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_ParseResultCopyWith<_$_ParseResult> get copyWith => throw _privateConstructorUsedError;
}

StackTraceLine _$StackTraceLineFromJson(Map<String, dynamic> json) {
  return _StackTraceLine.fromJson(json);
}

/// @nodoc
mixin _$StackTraceLine {
  int get lineNumber => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StackTraceLineCopyWith<StackTraceLine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StackTraceLineCopyWith<$Res> {
  factory $StackTraceLineCopyWith(StackTraceLine value, $Res Function(StackTraceLine) then) =
      _$StackTraceLineCopyWithImpl<$Res>;
  $Res call({int lineNumber, String text});
}

/// @nodoc
class _$StackTraceLineCopyWithImpl<$Res> implements $StackTraceLineCopyWith<$Res> {
  _$StackTraceLineCopyWithImpl(this._value, this._then);

  final StackTraceLine _value;
  // ignore: unused_field
  final $Res Function(StackTraceLine) _then;

  @override
  $Res call({
    Object? lineNumber = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      lineNumber: lineNumber == freezed
          ? _value.lineNumber
          : lineNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StackTraceLineCopyWith<$Res> implements $StackTraceLineCopyWith<$Res> {
  factory _$$_StackTraceLineCopyWith(_$_StackTraceLine value, $Res Function(_$_StackTraceLine) then) =
      __$$_StackTraceLineCopyWithImpl<$Res>;
  @override
  $Res call({int lineNumber, String text});
}

/// @nodoc
class __$$_StackTraceLineCopyWithImpl<$Res> extends _$StackTraceLineCopyWithImpl<$Res>
    implements _$$_StackTraceLineCopyWith<$Res> {
  __$$_StackTraceLineCopyWithImpl(_$_StackTraceLine _value, $Res Function(_$_StackTraceLine) _then)
      : super(_value, (v) => _then(v as _$_StackTraceLine));

  @override
  _$_StackTraceLine get _value => super._value as _$_StackTraceLine;

  @override
  $Res call({
    Object? lineNumber = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_StackTraceLine(
      lineNumber: lineNumber == freezed
          ? _value.lineNumber
          : lineNumber // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StackTraceLine implements _StackTraceLine {
  const _$_StackTraceLine({required this.lineNumber, required this.text});

  factory _$_StackTraceLine.fromJson(Map<String, dynamic> json) => _$$_StackTraceLineFromJson(json);

  @override
  final int lineNumber;
  @override
  final String text;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StackTraceLine &&
            const DeepCollectionEquality().equals(other.lineNumber, lineNumber) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lineNumber), const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_StackTraceLineCopyWith<_$_StackTraceLine> get copyWith =>
      __$$_StackTraceLineCopyWithImpl<_$_StackTraceLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StackTraceLineToJson(
      this,
    );
  }
}

abstract class _StackTraceLine implements StackTraceLine {
  const factory _StackTraceLine({required final int lineNumber, required final String text}) = _$_StackTraceLine;

  factory _StackTraceLine.fromJson(Map<String, dynamic> json) = _$_StackTraceLine.fromJson;

  @override
  int get lineNumber;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_StackTraceLineCopyWith<_$_StackTraceLine> get copyWith => throw _privateConstructorUsedError;
}

DatabaseParseResult _$DatabaseParseResultFromJson(Map<String, dynamic> json) {
  return _DatabaseParseResult.fromJson(json);
}

/// @nodoc
mixin _$DatabaseParseResult {
  ParseResult get parseResult => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseParseResultCopyWith<DatabaseParseResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseParseResultCopyWith<$Res> {
  factory $DatabaseParseResultCopyWith(DatabaseParseResult value, $Res Function(DatabaseParseResult) then) =
      _$DatabaseParseResultCopyWithImpl<$Res>;
  $Res call({ParseResult parseResult, bool isEncrypted});

  $ParseResultCopyWith<$Res> get parseResult;
}

/// @nodoc
class _$DatabaseParseResultCopyWithImpl<$Res> implements $DatabaseParseResultCopyWith<$Res> {
  _$DatabaseParseResultCopyWithImpl(this._value, this._then);

  final DatabaseParseResult _value;
  // ignore: unused_field
  final $Res Function(DatabaseParseResult) _then;

  @override
  $Res call({
    Object? parseResult = freezed,
    Object? isEncrypted = freezed,
  }) {
    return _then(_value.copyWith(
      parseResult: parseResult == freezed
          ? _value.parseResult
          : parseResult // ignore: cast_nullable_to_non_nullable
              as ParseResult,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ParseResultCopyWith<$Res> get parseResult {
    return $ParseResultCopyWith<$Res>(_value.parseResult, (value) {
      return _then(_value.copyWith(parseResult: value));
    });
  }
}

/// @nodoc
abstract class _$$_DatabaseParseResultCopyWith<$Res> implements $DatabaseParseResultCopyWith<$Res> {
  factory _$$_DatabaseParseResultCopyWith(_$_DatabaseParseResult value, $Res Function(_$_DatabaseParseResult) then) =
      __$$_DatabaseParseResultCopyWithImpl<$Res>;
  @override
  $Res call({ParseResult parseResult, bool isEncrypted});

  @override
  $ParseResultCopyWith<$Res> get parseResult;
}

/// @nodoc
class __$$_DatabaseParseResultCopyWithImpl<$Res> extends _$DatabaseParseResultCopyWithImpl<$Res>
    implements _$$_DatabaseParseResultCopyWith<$Res> {
  __$$_DatabaseParseResultCopyWithImpl(_$_DatabaseParseResult _value, $Res Function(_$_DatabaseParseResult) _then)
      : super(_value, (v) => _then(v as _$_DatabaseParseResult));

  @override
  _$_DatabaseParseResult get _value => super._value as _$_DatabaseParseResult;

  @override
  $Res call({
    Object? parseResult = freezed,
    Object? isEncrypted = freezed,
  }) {
    return _then(_$_DatabaseParseResult(
      parseResult: parseResult == freezed
          ? _value.parseResult
          : parseResult // ignore: cast_nullable_to_non_nullable
              as ParseResult,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatabaseParseResult implements _DatabaseParseResult {
  const _$_DatabaseParseResult({required this.parseResult, required this.isEncrypted});

  factory _$_DatabaseParseResult.fromJson(Map<String, dynamic> json) => _$$_DatabaseParseResultFromJson(json);

  @override
  final ParseResult parseResult;
  @override
  final bool isEncrypted;

  @override
  String toString() {
    return 'DatabaseParseResult(parseResult: $parseResult, isEncrypted: $isEncrypted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseParseResult &&
            const DeepCollectionEquality().equals(other.parseResult, parseResult) &&
            const DeepCollectionEquality().equals(other.isEncrypted, isEncrypted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(parseResult), const DeepCollectionEquality().hash(isEncrypted));

  @JsonKey(ignore: true)
  @override
  _$$_DatabaseParseResultCopyWith<_$_DatabaseParseResult> get copyWith =>
      __$$_DatabaseParseResultCopyWithImpl<_$_DatabaseParseResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatabaseParseResultToJson(
      this,
    );
  }
}

abstract class _DatabaseParseResult implements DatabaseParseResult {
  const factory _DatabaseParseResult({required final ParseResult parseResult, required final bool isEncrypted}) =
      _$_DatabaseParseResult;

  factory _DatabaseParseResult.fromJson(Map<String, dynamic> json) = _$_DatabaseParseResult.fromJson;

  @override
  ParseResult get parseResult;
  @override
  bool get isEncrypted;
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseParseResultCopyWith<_$_DatabaseParseResult> get copyWith => throw _privateConstructorUsedError;
}
