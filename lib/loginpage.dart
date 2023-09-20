import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));
}

class loginpage extends StatelessWidget {
  String username = "admin@gmail.com";
  String password = "admin@123";
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Login Page"),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image(image: NetworkImage("https://cdn3.iconfinder.com/data/icons/feather-5/24/instagram-64.png")),
            SizedBox(height: 30,),
            Text(
              "INSTAGRAM",
              style: GoogleFonts.abel(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    fillColor: Colors.grey.shade200,
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    fillColor: Colors.grey.shade200,
                    filled: true),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (username == uname_controller.text &&
                      password == pass_controller.text) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => home()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Invalid Username/Password or the fields are empty"),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                child: Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => register()));
                },
                child: Text("NOt a user? Signup here!!!"))
          ],
        ),
      ),
    );
  }
}
