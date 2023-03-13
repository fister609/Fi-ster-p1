import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                title: Text("About Us", style: TextStyle(

                ),
                ) ,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                  backgroundColor: Colors.white,
                  maxRadius: 80,
                ),
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              SizedBox(height: 10,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
