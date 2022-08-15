part of 'stacktrace_bloc.dart';

@freezed
class StacktraceState with _$StacktraceState {
  const factory StacktraceState({
    required StacktraceResource result,
    required bool isEncrypted,
    required bool isLoading,
    String? id,
    String? password,
  }) = _State;
  static const StacktraceState initial = _State(
    result: StacktraceResource(),
    isEncrypted: false,
    isLoading: false,
  );
}

@freezed
class StacktraceResource with _$StacktraceResource {
  const factory StacktraceResource({
    ParseResult? data,
    Error? error,
  }) = _Loaded;
}

class Error {
  final String message;
  final StackTrace stackTrace;
  Error({
    required this.message,
    required this.stackTrace,
  });
}
