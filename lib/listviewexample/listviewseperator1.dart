import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: listviewseperator1(),
  ));
}

class listviewseperator1 extends StatelessWidget {
  const listviewseperator1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return Card(
              child: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.teal,
              ),
            );
          },
          separatorBuilder: (ctx, i) {
            if (i % 4 == 0) {
              return Divider(
                  color: Colors.primaries[i % Colors.primaries.length]);
            } else {
              return SizedBox();
            }
          },
          itemCount: 15),
    );
  }
}
