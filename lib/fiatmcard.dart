import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main()
{
  runApp(MaterialApp(
    home: fiatm(),
  ));
}
class fiatm extends StatelessWidget {
  const fiatm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM CARD"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(30)),
                color: Colors.teal
              ),
            ),
            Positioned(
              top: 80,
              left: 30,
              child: Row(
                children: [
                  Transform.rotate(angle: 90 * pi / 180 ,
                  child: FaIcon(FontAwesomeIcons.simCard,color: Colors.grey,size: 30,)),
                  SizedBox(width: 5,),
                  Transform.rotate(angle: 90 * pi / 180 , child: FaIcon(FontAwesomeIcons.wifi,color: Colors.grey,size: 30,))
                ],
              ),
            ),
            Positioned(
              top: 190,
              left: 30,
              child: Text("Muhammed Hafiz K F",style: GoogleFonts.aBeeZee(fontSize: 20,color: Colors.grey),)),
            Positioned(
              top: 190,
              right: 20,
              child: Text("VISA",style: GoogleFonts.fahkwang(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.grey),)),
              Positioned(
                top: 10,
                right: 20,
                child: GradientText("FI",style:GoogleFonts.familjenGrotesk(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),colors: [
                  Colors.black38,
                  Colors.white,
                  Colors.black26
                ],
                stops: [
                  0,.3,.1
                ],))
          ],
        ),
      ),
    );
  }
}