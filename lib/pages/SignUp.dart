import 'dart:math';

import 'package:demo/helper/helper_function.dart';
import 'package:demo/pages/HomePage.dart';
import 'package:demo/pages/LoginPage.dart';
import 'package:demo/service/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isLoading = false;
  String fullname = '';
  String email = '';
  String password = '';
  AuthService authService = AuthService();
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

                    TextFormField(
                        decoration: InputDecoration(
                            label: Text("Full name",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black
                                )),
                            prefixIcon: Icon(Icons.person, color: Colors.black,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            )
                        ),
                      validator: RequiredValidator(errorText: "Required feild"),
                      onChanged: (val){
                          setState(() {
                            fullname = val;
                          });
                      },

                    ),
                    SizedBox(height: 20),
                    TextFormField(
                        decoration: InputDecoration(
                            label: Text("Email",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black
                                )),
                            prefixIcon: Icon(
                              Icons.email_outlined, color: Colors.black,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            )
                        ),
                        onChanged: (val){
                          setState(() {
                            email = val;
                          });
                        },
                        validator: MultiValidator([
                          EmailValidator(errorText: "Invalid Email"),
                          RequiredValidator(errorText: "Required feild")
                        ])
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                        obscureText: true,
                        obscuringCharacter: "#",
                        decoration: InputDecoration(
                            label: Text("Password",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black
                                )),
                            prefixIcon: Icon(
                              Icons.password_outlined, color: Colors.black,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,
                                    width: 2,
                                    style: BorderStyle.solid)
                            )
                        ),
                        onChanged: (val){
                          setState(() {
                            password = val;
                          });
                        },
                        validator: MinLengthValidator(
                            min(8, 16), errorText: "Minimum 8 letters")
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(onPressed: () {
                      register();
                    },
                      child: Text("Sign-IN", style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }


  register() async {
    if (Formkey.currentState!.validate()){
      setState(() {
        _isLoading = true;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      });
      await authService.registerUserWithEmailAndPassword(fullname, email, password)
          .then((value)async{
        if(value == true){

        }
        else{
          _isLoading = false;
        }
      });
    }
  }
}