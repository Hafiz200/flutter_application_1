import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listview2()));
}

class listview2 extends StatelessWidget {
  listview2({super.key});
  var title = ["Hafiz", "Amruthesh", "Faeiz", "Muneer"];
  var subti = [20, 30, 40, 50];
  var images = [
    "assets/images/Screenshot 2023-09-12 223322.png",
    "assets/images/amru.jpg",
    "assets/images/faeiz.jpg",
    "assets/images/munnas.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View 2"),
      ),
      body: ListView(
          children: List.generate(
              4,
              (index) => Card(
                    child: ListTile(
                      title: Text(title[index]),
                      subtitle: Text("${subti[index]}"),
                      leading: CircleAvatar(backgroundImage:AssetImage (images[index])),
                    ),
                  ))),
    );
  }
}
