import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreHandler extends ChangeNotifier {
  FirestoreHandler();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addStackTrace() async {}
  Future<void> getStackTrace() async {}
}
