import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

class Storage {
  User? user;

  @action
  listenForAuth() {
    FirebaseAuth.instance.userChanges().listen((User? userChange) {
      user = userChange;
      if (user != null) {

      }
    });
  }
}