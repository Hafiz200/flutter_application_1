import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: listview1(),
  ));
}

class listview1 extends StatelessWidget {
  const listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: ListView(
        children: [
          Card(
              child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/alsajpic.jpg"),),
            trailing: Column(
              children: [
                Text("10:11"),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text("2"),
                )
              ],
            ),
            title: Text("Alsaj Kitchen"),
            subtitle: Row(
              children: [
                Icon(Icons.read_more),
                Text("This is a sample subtitle"),
              ],
            ),
          )),
          Card(
              child: ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/tomoto.jpg")),
            title: Text("Product 2"),

            trailing: Column(
              children: [
                Text("12:50"),CircleAvatar(minRadius: 6,maxRadius:10 , backgroundColor: Colors.teal,child: Text("5"))
              ],
            ),
          )),
          Card(child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/Screenshot 2023-09-12 223322.png")),
            title: Text("Hafiz Faisal"))),
          Card(child: ListTile(title: Text("Product 4"))),
          Card(child: ListTile(title: Text("Product 5"))),
        ],
      ),
    );
  }
}
