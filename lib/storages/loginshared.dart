import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeshared.dart';

void main() {
  runApp(MaterialApp(
    home: loginshared(),
  ));
}

class loginshared extends StatefulWidget {
  loginshared({super.key});

  @override
  State<loginshared> createState() => _loginsharedState();
}

class _loginsharedState extends State<loginshared> {
  final username = TextEditingController();

  final password = TextEditingController();

  late SharedPreferences prefs;

  late bool newuser;

  @override
  void initState() {
    checkuseralreadylogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: username,
              decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: "Paasword",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  prefs = await SharedPreferences.getInstance();
                  String uname = username.text.trim();
                  String pass = password.text.trim();
                  if (uname != "" && pass != "") {
                    prefs.setString("username", uname);
                    prefs.setString("password", pass);
                    prefs.setBool("firstlogin", false);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => homeshared()));
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }

  void checkuseralreadylogin() async {
    prefs = await SharedPreferences.getInstance();
    newuser = prefs.getBool("firstlogin") ?? true;
    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homeshared()));
    }
  }
}
