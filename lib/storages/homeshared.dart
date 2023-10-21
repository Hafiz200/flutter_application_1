import 'package:flutter/material.dart';
import 'package:flutter_application_1/storages/loginshared.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeshared extends StatefulWidget {
  homeshared({super.key});

  @override
  State<homeshared> createState() => _homesharedState();
}

class _homesharedState extends State<homeshared> {
  late SharedPreferences prefs;
  String? user;
  @override
  void initState() {
    fetchuser();
  }

  @override
  Widget build(BuildContext context) {
    String? uname = prefs.getString("username");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome $uname"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  prefs.setBool("firstlogin", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => loginshared()));
                },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }

  void fetchuser() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      user = prefs.getString("username");
    });
  }
}
