import 'package:stacktrace_parser/domain/stacktrace_models.dart';

/// Interface for dealing with the database.
abstract class Database {
  /// Add a stack trace and the raw input stack trace to the database.
  Future<String> addStackTrace({ParseResult? result, bool isEncrypted = false});

  /// Get a stack trace from the database.
  /// Throw [StackTraceDoesntExistExeption] if the stack trace doesn't exist.
  Future<DatabaseParseResult> getStackTrace(String id);
}

/// Exception thrown when a stack trace doesn't exist.
class StackTraceDoesntExistExeption implements Exception {}
