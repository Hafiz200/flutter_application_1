import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: bottomsheet(),
  ));
}

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Share Via"),
                      Divider(),
                      ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),trailing: Text("Whatsapp"),),
                      ListTile(leading : FaIcon(FontAwesomeIcons.instagram,color: Colors.pink,),trailing: Text("Instagram"),)
                    ],
                  );
                });
          },
          child: Image.network(
            "https://images.unsplash.com/photo-1696650811922-9a14bf80be8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIwfE04alZiTGJUUndzfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
          ),
        ),
      ),
    );
  }
}
