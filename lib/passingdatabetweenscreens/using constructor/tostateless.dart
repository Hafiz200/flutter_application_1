import 'package:flutter/material.dart';

class datastateless extends StatelessWidget {
  String name;
  String Location;
  int Phone;
  String img;
  datastateless(
      {required String this.name,
      required String this.Location,
      required int this.Phone,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(img,height: 100,),
            Text(
              "Name :$name",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Location :$Location",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Phone :$Phone",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
