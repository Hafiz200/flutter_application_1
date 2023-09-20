import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: StatefulLogin(),
  ));
}

class StatefulLogin extends StatefulWidget {
  @override
  State<StatefulLogin> createState() => _StatefulLoginState();
}

class _StatefulLoginState extends State<StatefulLogin> {
  final formkey = GlobalKey<FormState>();
  String username = "abc@gmail.com";
  String pass="abc@123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (uname) {
                  if (uname!.isEmpty || uname!=username)
                       {
                    return "Invalid username";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "UserName",
                  labelText: "UserName",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password!.length < 6) {
                    return "password is empty/password is ivalid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: " PassWord",
                  labelText: "PassWord",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => home(),
                    ));
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
