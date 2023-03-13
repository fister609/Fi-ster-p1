import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DatabaseService{
  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("users");

  final CollectionReference groupCollection =
  FirebaseFirestore.instance.collection("groups");

  Future updateUserData(String fullname, String email, String password) async{
    return await userCollection.doc(uid).set({
      "fullName" : fullname,
      "email" : email,
      "password" : password,
      "groups": [],
      "Profilepic" : '',
      "uid":uid,
    });
  }
}