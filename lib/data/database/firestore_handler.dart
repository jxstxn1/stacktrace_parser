import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacktrace_parser/data/database/database.dart';
import 'package:stacktrace_parser/domain/stacktrace_models.dart';

class FirestoreHandler implements Database {
  FirestoreHandler();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<String> addStackTrace({ParseResult? result, bool isEncrypted = false}) async {
    if (result == null) return '';
    final DatabaseParseResult databaseData = DatabaseParseResult(parseResult: result, isEncrypted: isEncrypted);
    return _firestore
        .collection('stacktraces')
        .add(json.decode(json.encode(databaseData.toJson())) as Map<String, dynamic>)
        .then((DocumentReference ref) => ref.id);
  }

  @override
  Future<DatabaseParseResult> getStackTrace(String id) async {
    return _firestore.collection('stacktraces').doc(id).get().then((DocumentSnapshot value) {
      if (!value.exists) throw StackTraceDoesntExistExeption;
      return DatabaseParseResult.fromJson(value.data() as Map<String, dynamic>? ?? {});
    });
  }
}
