import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: exptitle(),
  ));
}

class exptitle extends StatelessWidget {
  const exptitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Card"),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand to view more"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
                title: Text("Pink"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
                title: Text("Yellow"),
              )
            ],
          ),
          ExpansionTile(
            title: Text("Icons"),
            subtitle: Text("Expand to view more"),
            children: [
              ListTile(
                leading: Icon(Icons.access_time_filled_sharp,color: Colors.red,),
                title: Text("Access Time"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_sharp,color: Colors.red),
                title: Text("Balance"),
              ),
              ListTile(
                leading: Icon(Icons.add_alert,color: Colors.red),
                title: Text("Alert"),
              ),
              ListTile(
                leading: Icon(Icons.favorite,color: Colors.red),
                title: Text("Favorite"),
              )
            ],
          )
        ],
      ),
    );
  }
}
