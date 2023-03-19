import 'package:demo/helper/helper_function.dart';
import 'package:demo/pages/Profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './shared/constants.dart';
import './pages/HomePage.dart';
import './pages/LoginPage.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    // for web
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: apikey,
            appId: appId,
            messagingSenderId: messagingSenderId,
            projectId: projectId
        )
    );
  }
  else{
    // for ios and android
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserLoggedInStatus();
  }
  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if(value!=null){
        _isSignedIn = value;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: _isSignedIn ? HomePage() : LoginPage(),
      );
  }
}


