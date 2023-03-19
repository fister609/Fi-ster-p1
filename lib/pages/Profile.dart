import 'package:demo/pages/LoginPage.dart';
import 'package:demo/pages/SignUp.dart';
import 'package:demo/service/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'About.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
            ),
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Pratik Wangaskar", style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.mail,weight: 25),
              title: Text('pratikwangaskar@gmail.com', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.home,weight: 25),
              title: Text('Aids', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.date_range,weight: 25),
              title: Text('Second Year', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 20,),


        Row(
          children: <Widget> [
            Expanded(
              child: ListTile(
                leading: Icon(Icons.notification_add,weight: 25),
                title: Text('Notification', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30,top: 15),
              child: FlutterSwitch(
                  height: 30,
                  width: 55,
                  value: status,
                  onToggle: (value){
                    setState(() {
                      status = value;
                    });
                  }),
            ),
          ],
        ),



            SizedBox(height: 20,),
            // TogleButtons(children: [], isSelected:  ),
           Center(
                child: ElevatedButton(onPressed: (){
                  authService.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, child: Text("Logout",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),

                ),

           ),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                child: Text("AboutUs", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
                ),
                ),
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>About()));
               },
              ),

            )




          ],
        ),
      ),
    );
  }
}
