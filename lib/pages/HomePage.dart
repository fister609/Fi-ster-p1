import 'package:demo/pages/Profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
          },
              child: Text(
                "Profile", style: TextStyle(
                color: Colors.white,
                ),
          ),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),)
        ],
      ),
    );
  }
}
