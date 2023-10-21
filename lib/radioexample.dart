import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: radioexample(),
  ));
}

class radioexample extends StatefulWidget {
  const radioexample({super.key});

  @override
  State<radioexample> createState() => _radioexampleState();
}

class _radioexampleState extends State<radioexample> {
  var gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  title: Text("male",style: TextStyle(color: Colors.white),),
                  leading: Radio(focusColor: Colors.yellow,
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("female"),
                  leading: Radio(
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                        
                      }),
                ),
                Text("$gender")
              ],
            ),
          )
        ],
      ),
    );
  }
}
