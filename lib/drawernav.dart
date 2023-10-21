import 'package:assignments/sundarpiche.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawernav(),
  ));
}

class drawernav extends StatelessWidget {
  const drawernav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY DRAWER"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerLeft,
                  colors: [Colors.yellow, Colors.pink, Colors.green])),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
                width: 150,
              ),
              ListTile(
                leading: Image(image: AssetImage("assets/images/amru.jpg")),
                title: Text("Amruthesh T M"),
                subtitle: Text("Working @ Luminar Techno Lab"),
              ),
              SizedBox(
                height: 30,
                width: 10,
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sundar()));
                },
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_sharp),
                title: Text("Leads"),
              ),
              ListTile(
                leading: Icon(Icons.circle_notifications),
                title: Text("Clients"),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text("Projects"),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_outlined),
                title: Text("Subscriptions"),
              ),
              ListTile(
                leading: Icon(Icons.payments),
                title: Text("Payments"),
              ),
              ListTile(
                leading: Icon(Icons.verified_user_sharp),
                title: Text("Users"),
              ),
              ListTile(
                leading: Icon(Icons.library_add),
                title: Text("Library"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
