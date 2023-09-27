import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/statefullogin.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: splash2(),
  ));
}

class splash2 extends StatefulWidget {
  const splash2({super.key});

  @override
  State<StatefulWidget> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => StatefulLogin()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          // color: Colors.yellow) ,
          //image: DecorationImage( fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1694164108456-e21c7e575a73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60"))
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.centerLeft,
              colors: [Colors.green, Colors.white70, Colors.black12])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.favorite,
            //   size: 250,
            //   color: Colors.red,]
            // ),
             Image(image: NetworkImage("https://cdn3.iconfinder.com/data/icons/feather-5/24/instagram-64.png"),color: Colors.orange,),
             SizedBox(height: 30,),
            Text("INSTAGRAM",
                style: GoogleFonts.montaga(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }
}
