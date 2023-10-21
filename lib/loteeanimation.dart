import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: loteeanim(),
  ));
}

class loteeanim extends StatelessWidget {
  const loteeanim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animation/animationflower.json"),
      ),
    );
  }
}
