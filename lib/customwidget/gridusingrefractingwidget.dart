import 'package:flutter/material.dart';
import 'package:flutter_application_1/customwidget/refactoringwidget.dart';

void main() {
  runApp(MaterialApp(
    home: gridwithrefractoring(),
  ));
}

class gridwithrefractoring extends StatelessWidget {
  const gridwithrefractoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid with Refactoring Widget"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
        children: [
          customcard(
            image: NetworkImage(
                "https://m.media-amazon.com/images/I/81UNjeny94L._UX679_.jpg"),
            text: "My Product",
            click: () {},
            click1: () {},
          )
        ],
      ),
    );
  }
}
