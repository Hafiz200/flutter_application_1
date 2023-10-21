import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: clipwidget(),
  ));
}

class clipwidget extends StatelessWidget {
  const clipwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .2,
                  heightFactor: 1,
                  alignment: Alignment.center,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1696516956559-c34391e0188b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
             child: Container(
                child: Image.network("https://images.unsplash.com/photo-1691493646323-813e821f003e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
             ),
             ClipOval(
              child: Image.network("https://images.unsplash.com/photo-1696537768609-1cf03f53e893?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI1fEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
             ),
             ClipPath(
            clipper: OctagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.red,
              child:Image.network("https://images.unsplash.com/photo-1696344640819-bbfba9957ceb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI5fEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
            ),
             )
          ],
        ),
      ),
    );
  }
}
