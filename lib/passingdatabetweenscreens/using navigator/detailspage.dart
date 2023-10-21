import 'package:flutter/material.dart';
import 'package:flutter_application_1/passingdatabetweenscreens/using%20navigator/dummydata.dart';
import 'package:google_fonts/google_fonts.dart';

class productdetails extends StatelessWidget {
  productdetails({super.key});
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
     var product=products.firstWhere((product) => product["id"]==id);
    return Scaffold(
    appBar: AppBar(
      title: Text("Product Details"),
    ),
    body: Center(
      child: Column(
        children: [
          Image.network(product["image"],height: 200,width: 200,),
          Text(product["name"],style: GoogleFonts.fahkwang(fontSize: 30),),
          Text("${product["Price"]}",style: TextStyle(fontSize: 30),),
          Text("${product["rating"]}",style: TextStyle(fontSize: 30),),
          Text(product["description"],style: TextStyle(fontSize: 30),)
          
        ],
      ),
    ),

    );

  }
}
