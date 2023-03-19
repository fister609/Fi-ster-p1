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

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                title: Text("About Us", style: TextStyle(
                color: Colors.black,
                ),
                ) ,
              ),
              SizedBox(height: 20,),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                  backgroundColor: Colors.white,
                  maxRadius: 80,
                ),
              ),
              Text("Pratik Wangaskar", style: TextStyle(
                  color: Colors.black
              ),),
              Text('Instagram: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              Text("Pratik Wangaskar", style: TextStyle(
                  color: Colors.black
              ),),
              Text('Instagram: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              Text("Pratik Wangaskar", style: TextStyle(
                  color: Colors.black
              ),),
              Text('Instagram: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              Text("Pratik Wangaskar", style: TextStyle(
                  color: Colors.black
              ),),
              Text('Instagram: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/09/24/a7/0924a7ef295741e916c8f42512bbe5bd.jpg'),
                backgroundColor: Colors.white,
                maxRadius: 80,
              ),
              Text("Pratik Wangaskar", style: TextStyle(
                  color: Colors.black
              ),),
              Text('Instagram: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),

            ],
          ),
        ),
      ),
    );
  }
}
