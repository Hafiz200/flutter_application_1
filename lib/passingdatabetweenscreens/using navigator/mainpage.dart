import 'package:flutter/material.dart';
import 'package:flutter_application_1/passingdatabetweenscreens/using%20navigator/detailspage.dart';

import 'dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: productmain(),
    routes: {
      "details":(context) => productdetails()
    },
  ));
}

class productmain extends StatelessWidget {
  const productmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(15),
        // children: products
        //     .map((product) => InkWell(
        //       onTap:() => Navigator.pushNamed(context, "details",arguments: product["id"]),
        //       child: Card(
        //         child: Column(
        //           children: [
        //             Container(
        //               height: 150,
        //               decoration: BoxDecoration(
        //                 image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(product["image"]))
        //               ),
        //             ),
        //             Text(product["name"]),
        //             Text('${product["Price"]}\$')
        //           ],
        //             ),
        //       ),
        //     ))
        //     .toList(),
        children: List.generate(products.length, (index) => 
        InkWell(
          onTap:() => Navigator.pushNamed(context, "details",arguments: products[index]["id"]),
          child: Card(
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.contain, image: NetworkImage(products[index]["image"])) , 
                  ),
        
                ),
                Text(products[index]["name"]),
                Text("${products[index]["Price"]}\$")
              ],
            ),
          ),
        )),
      ),
    );
  }
}
