part of 'stacktrace_bloc.dart';

@freezed
class StacktraceEvent with _$StacktraceEvent {
  const factory StacktraceEvent.loadStacktrace(String id) = _LoadStack;
  const factory StacktraceEvent.decryptStacktrace(String password) = _DecryptStack;
  const factory StacktraceEvent.parseStacktrace(String stacktrace) = _ParseStack;
  const factory StacktraceEvent.shareStacktrace(String? password) = _ShareStack;
  const factory StacktraceEvent.reset() = _Reset;
}
