import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() {
  runApp(MaterialApp(
    home: staggrid(),
  ));
}

class staggrid extends StatelessWidget {
  const staggrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2, child: Card(
            color: Colors.green,
            child: Center(
              child: Icon(Icons.account_balance),
            ),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Card(
            color: Colors.yellow,
            child: Center(
              child: Icon(Icons.account_balance),
            ),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Card(
            color: Colors.blue,
            child: Center(
              child: Icon(Icons.account_balance),
            ),
          ))
        ],),
      ),
    );
  }
}
