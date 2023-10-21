import 'package:flutter/material.dart';

class datastateful extends StatefulWidget {
  String name;
  String Location;
  int Phone;
  String img;
  datastateful(
      {super.key,
      required this.Location,
      required this.Phone,
      required this.name,
      required this.img});

  @override
  State<datastateful> createState() => _datastatefulState();
}

class _datastatefulState extends State<datastateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("name"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.img,
              height: 100,
            ),
            Text(
              "Name : ${widget.name}",
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Location :${widget.Location}",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Phone :${widget.Phone}",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
