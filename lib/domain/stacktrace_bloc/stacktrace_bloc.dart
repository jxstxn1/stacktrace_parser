import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stacktrace_parser/data/crypto/crypto.dart';
import 'package:stacktrace_parser/data/database/database.dart';
import 'package:stacktrace_parser/data/stacktace/stacktrace_parser.dart';
import 'package:stacktrace_parser/domain/stacktrace_models.dart';

part 'stacktrace_event.dart';
part 'stacktrace_state.dart';
part 'stacktrace_bloc.freezed.dart';

class StacktraceBloc extends Bloc<StacktraceEvent, StacktraceState> {
  Database database;
  Crypto crypto;
  ParseResult? _result;
  bool? isEncrypted;
  String? id;
  String? password;

  StacktraceBloc({
    required this.database,
    required this.crypto,
  }) : super(StacktraceState.initial) {
    on<_Reset>((_, emit) {
      _result = null;
      isEncrypted = null;
      id = null;
      password = null;
      emit(StacktraceState.initial);
    });
    on<_LoadStack>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final DatabaseParseResult databaseParseResult = await database.getStackTrace(event.id);
        _result = databaseParseResult.parseResult;
        if (databaseParseResult.isEncrypted) {
          emit(state.copyWith(isEncrypted: true));
          id = event.id;
          return;
        } else {
          emit(
            state.copyWith(
              result: StacktraceResource(data: _result),
              isEncrypted: false,
              isLoading: false,
              id: event.id,
            ),
          );
        }
      } catch (e, stack) {
        emit(
          state.copyWith(
            result: StacktraceResource(
              error: Error(
                message: e.toString(),
                stackTrace: stack,
              ),
            ),
          ),
        );
      }
    });
    on<_DecryptStack>((event, emit) async {
      if (_result == null) {
        emit(
          state.copyWith(
            result: StacktraceResource(
              error: Error(message: 'Something went wrong', stackTrace: StackTrace.current),
            ),
          ),
        );
      }
      try {
        final ParseResult result = await crypto.decryptParseResult(_result!, event.password);
        emit(
          state.copyWith(
            result: StacktraceResource(data: result),
            isEncrypted: false,
            isLoading: false,
            id: id,
          ),
        );
      } catch (e, stack) {
        emit(
          state.copyWith(
            result: StacktraceResource(error: Error(message: 'Invalid Password', stackTrace: stack)),
          ),
        );
      }
    });

    on<_ParseStack>((event, emit) async {
      _result = parseStackTrace(event.stacktrace);
      emit(state.copyWith(result: StacktraceResource(data: _result)));
    });

    on<_ShareStack>((event, emit) async {
      if (_result == null) {
        emit(
          state.copyWith(
            result: StacktraceResource(
              error: Error(
                message: 'No stack trace to share.',
                stackTrace: StackTrace.current,
              ),
            ),
          ),
        );
      }
      if (event.password != null && event.password!.isNotEmpty) {
        final ParseResult encryptedResult = await crypto.encryptParseResult(_result!, event.password!);
        id = await database.addStackTrace(result: encryptedResult, isEncrypted: true);
        Clipboard.setData(ClipboardData(text: '/?id=$id'));
        emit(state.copyWith(id: id));
      } else {
        id = await database.addStackTrace(result: _result);
        Clipboard.setData(ClipboardData(text: '/?id=$id'));
        emit(state.copyWith(id: id));
      }
    });
  }
}
