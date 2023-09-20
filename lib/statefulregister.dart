import 'package:flutter/material.dart';
import 'package:flutter_application_1/statefullogin.dart';

void main() {
  runApp(MaterialApp(
    home: _statefulregister(),
  ));
}

class _statefulregister extends StatefulWidget {
  const _statefulregister({super.key});

  @override
  State<_statefulregister> createState() => __ststefulregisterState();
}

class __ststefulregisterState extends State<_statefulregister> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.yellow),
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Image(
                image: NetworkImage(
                    "https://cdn3.iconfinder.com/data/icons/feather-5/24/instagram-64.png")),
            SizedBox(
              height: 30,
            ),
            Text("INSTAGRAM",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (num) {
                  if (num!.isEmpty || num.length != 10) {
                    return "Please enter a valid phone number";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Phone",
                  labelText: "Phone",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (uname) {
                  if (uname!.isEmpty ||
                      !uname!.contains("@") ||
                      !uname!.contains(".com")) {
                    return "Invalid username";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "UserName",
                  labelText: "UserName",
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (password) {
                  pass = password;
                  if (password!.isEmpty || password!.length < 6) {
                    return "Password must not be empty/password length must be 6";
                  } else {
                    return null;
                  }
                },
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "PassWord",
                  labelText: "PassWord",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (cpassword) {
                  if (cpassword!.isEmpty || cpassword != pass) {
                    return "password is same/password must not be empty";
                  } else {
                    return null;
                  }
                },
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Confirm PassWord",
                  labelText: "Confirm PassWord",
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final valid = formkey.currentState!.validate();
                if (valid) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) =>StatefulLogin())));
                }
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
