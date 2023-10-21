import 'package:flutter/material.dart';
import 'package:flutter_application_1/storages/loginshared.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: registershared(),
  ));
}

class registershared extends StatefulWidget {
  const registershared({super.key});

  @override
  State<registershared> createState() => _registersharedState();
}

class _registersharedState extends State<registershared> {
  final rname = TextEditingController();
  final rusername = TextEditingController();
  final rpassword = TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: rname,
              decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
            TextField(
              controller: rusername,
              decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
            TextField(
              controller: rpassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45))),
            ),
            ElevatedButton(
                onPressed: () async {
                  String personname = rname.text.trim();
                  String usename = rusername.text.trim();
                  String pwd = rpassword.text.trim();

                  preferences = await SharedPreferences.getInstance();
                  preferences.setString("Name", personname);
                  preferences.setString("Username", usename);
                  preferences.setString("Password", pwd);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => loginshared()));
                },
                child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
