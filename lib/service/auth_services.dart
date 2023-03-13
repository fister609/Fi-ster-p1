import 'package:demo/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService{
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  // login



// register
Future registerUserWithEmailAndPassword(
    String fullname, String email, String password)async{
  try{
    User user = (await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)).user!;

    if (user!=null){
      await DatabaseService(uid: user.uid).updateUserData(fullname, email, password);
      return true;
    }
  }on FirebaseAuthException catch(e){
    print(e);
    return e;
  }
}


// signout
}

