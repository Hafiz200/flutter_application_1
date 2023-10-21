import 'package:flutter/material.dart';
import 'package:flutter_application_1/customizingappbar.dart';
import 'package:flutter_application_1/fiatmcard.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/registration.dart';

void main() {
  runApp(MaterialApp(
    home: botoombarex(),
  ));
}

class botoombarex extends StatefulWidget {
  const botoombarex({super.key});

  @override
  State<botoombarex> createState() => _botoombarexState();
}

class _botoombarexState extends State<botoombarex> {
  int index = 0;
  var screens = [
    fiatm(),
    appbar1(),
    loginpage(),
    register(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.yellow,
        currentIndex: index,
        onTap: (tapedindex) {
          setState(() {
            index = tapedindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.park_rounded), label: "Notify"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profile")
        ],
      ),
      body: screens[index],
    );
  }
}
