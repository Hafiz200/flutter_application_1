import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stack1(),
  ));
}

class stack1 extends StatelessWidget {
  const stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.red,
            ),
            Positioned(
              top: 80,
              left: 120,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.green,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
