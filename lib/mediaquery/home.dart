import 'package:flutter/material.dart';

import 'bigscreen.dart';
import 'mobilescreen.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return mobilescreen();
    } else {
      return bigscreen();
    }
  }
}
