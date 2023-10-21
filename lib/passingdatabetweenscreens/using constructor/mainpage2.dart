import 'package:flutter/material.dart';
import 'package:flutter_application_1/passingdatabetweenscreens/using%20constructor/tostataeful.dart';
import 'package:flutter_application_1/passingdatabetweenscreens/using%20constructor/tostateless.dart';

import '../using navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: mainpage2(),
  ));
}

class mainpage2 extends StatelessWidget {
  const mainpage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Passing")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>datastateless(
              name:"Luminar",Location:"Kakkanad",Phone:9656263557,img : products[0]["image"]
            ))), child: Text("To Stateless")),
            ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>datastateful(
              name:"Luminar",Location:"Kakkanad",Phone:9656263557,img : products[3]["image"]
            ))), child: Text("To Stateful"))
          ],
        ),
      ),
    );
  }
}
