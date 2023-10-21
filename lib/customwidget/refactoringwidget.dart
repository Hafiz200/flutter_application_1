import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customcard extends StatelessWidget {
  NetworkImage? image;
  String? text;
  IconData? icon;
  VoidCallback? click;
  VoidCallback? click1;
  customcard(
      {required this.image,
      required this.text,
      this.icon,
      required this.click, required Null Function() click1});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(image: image!,height: 150,),
          Text(
            text!,
            style: GoogleFonts.satisfy(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: click,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )),
              ElevatedButton(onPressed: click, child: Text("Buy Now"))
            ],
          )
        ],
      ),
    );
  }
}
