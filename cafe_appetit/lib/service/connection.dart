//Classe responsável pela conexão com o Firebase

import 'package:cafe_appetit/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import '../main.dart';

class ConnectionFirebase {
  final UserModel user;
  UserModel get currentUser => user;
  ConnectionFirebase({this.user});
  final databaseUser = FirebaseFirestore.instance.collection("Users");

  Future createUser(UserModel user) async {
    try {
      await databaseUser.doc(user.id).set(user.toJson());
      userController.setUserModel(user);
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }

  Future getUser(String uid) async {
    try {
      var userData = await databaseUser.doc(uid).get();
      print(userData.data());
      return UserModel.fromData(userData.data());
    } catch (e) {
      if (e is PlatformException) {
        return e.message;
      }
      return e.toString();
    }
  }
}
