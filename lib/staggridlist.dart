import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: staggridlist(),
  ));
}

class staggridlist extends StatelessWidget {
  staggridlist({super.key});

  var images = [
    "assets/images/fruit2.jpeg",
    "assets/images/amru.jpg",
    "assets/images/faeiz.jpg",
    "assets/images/munnas.jpg",
    "assets/images/ajmal.jpg",
    "assets/images/shafi.jpg",
    "assets/images/anand.jpg",
    "assets/images/sameem.jpg",
    "assets/images/kannan.jpg",
    "assets/images/suhail.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 4,
            children: List.generate(
                10,
                (index) => StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Card(
                      color: Colors.primaries[index % Colors.primaries.length],
                      child: Image.asset(images[index]),
                    )))),
      ),
    );
  }
}
