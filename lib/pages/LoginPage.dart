import 'dart:math';

import 'package:demo/pages/HomePage.dart';
import 'package:demo/pages/SignUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: Formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Email",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                  )),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.black,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid)
                  ),
                  focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid)
                  )
                ),
                validator: MultiValidator([
                  EmailValidator(errorText: "Invalid Email"),
                  RequiredValidator(errorText: "Required")
                  ]
                )
              ),
              SizedBox(height: 40),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "#",
                decoration: InputDecoration(
                  label: Text("Password",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black
                      )),
                  prefixIcon: Icon(Icons.password_outlined, color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid)
                    )
                ),
                validator: MinLengthValidator(min(8, 16), errorText: "Minimum 8 letters")
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: (){
                if(Formkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                }
              },
                child: Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
              SizedBox(height: 20),
              Text.rich(TextSpan(
                  text:"Don't have an account ?", style: TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(text: "Create", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ))
                  ],
                recognizer: TapGestureRecognizer()..onTap = () {
                    Navigator.push(context, MaterialPageRoute(builder: (contex) => SignUp()));
                }
              ))
            ],
        ),
          ),
      )
    )
    );
  }
}
