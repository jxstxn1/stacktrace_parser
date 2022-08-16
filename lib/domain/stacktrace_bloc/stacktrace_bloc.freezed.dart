// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stacktrace_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StacktraceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacktraceEventCopyWith<$Res> {
  factory $StacktraceEventCopyWith(StacktraceEvent value, $Res Function(StacktraceEvent) then) =
      _$StacktraceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StacktraceEventCopyWithImpl<$Res> implements $StacktraceEventCopyWith<$Res> {
  _$StacktraceEventCopyWithImpl(this._value, this._then);

  final StacktraceEvent _value;
  // ignore: unused_field
  final $Res Function(StacktraceEvent) _then;
}

/// @nodoc
abstract class _$$_LoadStackCopyWith<$Res> {
  factory _$$_LoadStackCopyWith(_$_LoadStack value, $Res Function(_$_LoadStack) then) =
      __$$_LoadStackCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$$_LoadStackCopyWithImpl<$Res> extends _$StacktraceEventCopyWithImpl<$Res>
    implements _$$_LoadStackCopyWith<$Res> {
  __$$_LoadStackCopyWithImpl(_$_LoadStack _value, $Res Function(_$_LoadStack) _then)
      : super(_value, (v) => _then(v as _$_LoadStack));

  @override
  _$_LoadStack get _value => super._value as _$_LoadStack;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_LoadStack(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadStack implements _LoadStack {
  const _$_LoadStack(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StacktraceEvent.loadStacktrace(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadStack &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_LoadStackCopyWith<_$_LoadStack> get copyWith => __$$_LoadStackCopyWithImpl<_$_LoadStack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) {
    return loadStacktrace(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) {
    return loadStacktrace?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadStacktrace != null) {
      return loadStacktrace(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) {
    return loadStacktrace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) {
    return loadStacktrace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadStacktrace != null) {
      return loadStacktrace(this);
    }
    return orElse();
  }
}

abstract class _LoadStack implements StacktraceEvent {
  const factory _LoadStack(final String id) = _$_LoadStack;

  String get id;
  @JsonKey(ignore: true)
  _$$_LoadStackCopyWith<_$_LoadStack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecryptStackCopyWith<$Res> {
  factory _$$_DecryptStackCopyWith(_$_DecryptStack value, $Res Function(_$_DecryptStack) then) =
      __$$_DecryptStackCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$_DecryptStackCopyWithImpl<$Res> extends _$StacktraceEventCopyWithImpl<$Res>
    implements _$$_DecryptStackCopyWith<$Res> {
  __$$_DecryptStackCopyWithImpl(_$_DecryptStack _value, $Res Function(_$_DecryptStack) _then)
      : super(_value, (v) => _then(v as _$_DecryptStack));

  @override
  _$_DecryptStack get _value => super._value as _$_DecryptStack;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_DecryptStack(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DecryptStack implements _DecryptStack {
  const _$_DecryptStack(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'StacktraceEvent.decryptStacktrace(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecryptStack &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_DecryptStackCopyWith<_$_DecryptStack> get copyWith =>
      __$$_DecryptStackCopyWithImpl<_$_DecryptStack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) {
    return decryptStacktrace(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) {
    return decryptStacktrace?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (decryptStacktrace != null) {
      return decryptStacktrace(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) {
    return decryptStacktrace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) {
    return decryptStacktrace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (decryptStacktrace != null) {
      return decryptStacktrace(this);
    }
    return orElse();
  }
}

abstract class _DecryptStack implements StacktraceEvent {
  const factory _DecryptStack(final String password) = _$_DecryptStack;

  String get password;
  @JsonKey(ignore: true)
  _$$_DecryptStackCopyWith<_$_DecryptStack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParseStackCopyWith<$Res> {
  factory _$$_ParseStackCopyWith(_$_ParseStack value, $Res Function(_$_ParseStack) then) =
      __$$_ParseStackCopyWithImpl<$Res>;
  $Res call({String stacktrace});
}

/// @nodoc
class __$$_ParseStackCopyWithImpl<$Res> extends _$StacktraceEventCopyWithImpl<$Res>
    implements _$$_ParseStackCopyWith<$Res> {
  __$$_ParseStackCopyWithImpl(_$_ParseStack _value, $Res Function(_$_ParseStack) _then)
      : super(_value, (v) => _then(v as _$_ParseStack));

  @override
  _$_ParseStack get _value => super._value as _$_ParseStack;

  @override
  $Res call({
    Object? stacktrace = freezed,
  }) {
    return _then(_$_ParseStack(
      stacktrace == freezed
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParseStack implements _ParseStack {
  const _$_ParseStack(this.stacktrace);

  @override
  final String stacktrace;

  @override
  String toString() {
    return 'StacktraceEvent.parseStacktrace(stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParseStack &&
            const DeepCollectionEquality().equals(other.stacktrace, stacktrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(stacktrace));

  @JsonKey(ignore: true)
  @override
  _$$_ParseStackCopyWith<_$_ParseStack> get copyWith => __$$_ParseStackCopyWithImpl<_$_ParseStack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) {
    return parseStacktrace(stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) {
    return parseStacktrace?.call(stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (parseStacktrace != null) {
      return parseStacktrace(stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) {
    return parseStacktrace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) {
    return parseStacktrace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (parseStacktrace != null) {
      return parseStacktrace(this);
    }
    return orElse();
  }
}

abstract class _ParseStack implements StacktraceEvent {
  const factory _ParseStack(final String stacktrace) = _$_ParseStack;

  String get stacktrace;
  @JsonKey(ignore: true)
  _$$_ParseStackCopyWith<_$_ParseStack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShareStackCopyWith<$Res> {
  factory _$$_ShareStackCopyWith(_$_ShareStack value, $Res Function(_$_ShareStack) then) =
      __$$_ShareStackCopyWithImpl<$Res>;
  $Res call({String? password});
}

/// @nodoc
class __$$_ShareStackCopyWithImpl<$Res> extends _$StacktraceEventCopyWithImpl<$Res>
    implements _$$_ShareStackCopyWith<$Res> {
  __$$_ShareStackCopyWithImpl(_$_ShareStack _value, $Res Function(_$_ShareStack) _then)
      : super(_value, (v) => _then(v as _$_ShareStack));

  @override
  _$_ShareStack get _value => super._value as _$_ShareStack;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_ShareStack(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShareStack implements _ShareStack {
  const _$_ShareStack(this.password);

  @override
  final String? password;

  @override
  String toString() {
    return 'StacktraceEvent.shareStacktrace(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShareStack &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_ShareStackCopyWith<_$_ShareStack> get copyWith => __$$_ShareStackCopyWithImpl<_$_ShareStack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) {
    return shareStacktrace(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) {
    return shareStacktrace?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (shareStacktrace != null) {
      return shareStacktrace(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) {
    return shareStacktrace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) {
    return shareStacktrace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (shareStacktrace != null) {
      return shareStacktrace(this);
    }
    return orElse();
  }
}

abstract class _ShareStack implements StacktraceEvent {
  const factory _ShareStack(final String? password) = _$_ShareStack;

  String? get password;
  @JsonKey(ignore: true)
  _$$_ShareStackCopyWith<_$_ShareStack> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) = __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res> extends _$StacktraceEventCopyWithImpl<$Res> implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then) : super(_value, (v) => _then(v as _$_Reset));

  @override
  _$_Reset get _value => super._value as _$_Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'StacktraceEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadStacktrace,
    required TResult Function(String password) decryptStacktrace,
    required TResult Function(String stacktrace) parseStacktrace,
    required TResult Function(String? password) shareStacktrace,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadStacktrace,
    TResult Function(String password)? decryptStacktrace,
    TResult Function(String stacktrace)? parseStacktrace,
    TResult Function(String? password)? shareStacktrace,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStack value) loadStacktrace,
    required TResult Function(_DecryptStack value) decryptStacktrace,
    required TResult Function(_ParseStack value) parseStacktrace,
    required TResult Function(_ShareStack value) shareStacktrace,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStack value)? loadStacktrace,
    TResult Function(_DecryptStack value)? decryptStacktrace,
    TResult Function(_ParseStack value)? parseStacktrace,
    TResult Function(_ShareStack value)? shareStacktrace,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements StacktraceEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
mixin _$StacktraceState {
  StacktraceResource get result => throw _privateConstructorUsedError;
  bool get isEncrypted => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get hasCreated => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StacktraceStateCopyWith<StacktraceState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacktraceStateCopyWith<$Res> {
  factory $StacktraceStateCopyWith(StacktraceState value, $Res Function(StacktraceState) then) =
      _$StacktraceStateCopyWithImpl<$Res>;
  $Res call(
      {StacktraceResource result, bool isEncrypted, bool isLoading, bool? hasCreated, String? id, String? password});

  $StacktraceResourceCopyWith<$Res> get result;
}

/// @nodoc
class _$StacktraceStateCopyWithImpl<$Res> implements $StacktraceStateCopyWith<$Res> {
  _$StacktraceStateCopyWithImpl(this._value, this._then);

  final StacktraceState _value;
  // ignore: unused_field
  final $Res Function(StacktraceState) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? isEncrypted = freezed,
    Object? isLoading = freezed,
    Object? hasCreated = freezed,
    Object? id = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StacktraceResource,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCreated: hasCreated == freezed
          ? _value.hasCreated
          : hasCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $StacktraceResourceCopyWith<$Res> get result {
    return $StacktraceResourceCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $StacktraceStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) = __$$_StateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StacktraceResource result, bool isEncrypted, bool isLoading, bool? hasCreated, String? id, String? password});

  @override
  $StacktraceResourceCopyWith<$Res> get result;
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res> extends _$StacktraceStateCopyWithImpl<$Res> implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then) : super(_value, (v) => _then(v as _$_State));

  @override
  _$_State get _value => super._value as _$_State;

  @override
  $Res call({
    Object? result = freezed,
    Object? isEncrypted = freezed,
    Object? isLoading = freezed,
    Object? hasCreated = freezed,
    Object? id = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_State(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StacktraceResource,
      isEncrypted: isEncrypted == freezed
          ? _value.isEncrypted
          : isEncrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCreated: hasCreated == freezed
          ? _value.hasCreated
          : hasCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {required this.result,
      required this.isEncrypted,
      required this.isLoading,
      this.hasCreated,
      this.id,
      this.password});

  @override
  final StacktraceResource result;
  @override
  final bool isEncrypted;
  @override
  final bool isLoading;
  @override
  final bool? hasCreated;
  @override
  final String? id;
  @override
  final String? password;

  @override
  String toString() {
    return 'StacktraceState(result: $result, isEncrypted: $isEncrypted, isLoading: $isLoading, hasCreated: $hasCreated, id: $id, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.isEncrypted, isEncrypted) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasCreated, hasCreated) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(isEncrypted),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasCreated),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_StateCopyWith<_$_State> get copyWith => __$$_StateCopyWithImpl<_$_State>(this, _$identity);
}

abstract class _State implements StacktraceState {
  const factory _State(
      {required final StacktraceResource result,
      required final bool isEncrypted,
      required final bool isLoading,
      final bool? hasCreated,
      final String? id,
      final String? password}) = _$_State;

  @override
  StacktraceResource get result;
  @override
  bool get isEncrypted;
  @override
  bool get isLoading;
  @override
  bool? get hasCreated;
  @override
  String? get id;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StacktraceResource {
  ParseResult? get data => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StacktraceResourceCopyWith<StacktraceResource> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacktraceResourceCopyWith<$Res> {
  factory $StacktraceResourceCopyWith(StacktraceResource value, $Res Function(StacktraceResource) then) =
      _$StacktraceResourceCopyWithImpl<$Res>;
  $Res call({ParseResult? data, Error? error});

  $ParseResultCopyWith<$Res>? get data;
}

/// @nodoc
class _$StacktraceResourceCopyWithImpl<$Res> implements $StacktraceResourceCopyWith<$Res> {
  _$StacktraceResourceCopyWithImpl(this._value, this._then);

  final StacktraceResource _value;
  // ignore: unused_field
  final $Res Function(StacktraceResource) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParseResult?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }

  @override
  $ParseResultCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ParseResultCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $StacktraceResourceCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) = __$$_LoadedCopyWithImpl<$Res>;
  @override
  $Res call({ParseResult? data, Error? error});

  @override
  $ParseResultCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res> extends _$StacktraceResourceCopyWithImpl<$Res> implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Loaded(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ParseResult?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.data, this.error});

  @override
  final ParseResult? data;
  @override
  final Error? error;

  @override
  String toString() {
    return 'StacktraceResource(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith => __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);
}

abstract class _Loaded implements StacktraceResource {
  const factory _Loaded({final ParseResult? data, final Error? error}) = _$_Loaded;

  @override
  ParseResult? get data;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith => throw _privateConstructorUsedError;
}
