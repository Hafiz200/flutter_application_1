import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  )); //to run an app//material app is the default theme of our flutter app//home splashpage is
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
         child: Text('മലയാളം ഇം‌ഗ്ലീഷ് നിഘണ്ടു', style:GoogleFonts.montaga(fontSize: 30,color: Colors.brown,fontWeight: FontWeight.bold)),
         elevation: 0,),
       // backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
           // color: Colors.yellow) ,
           //image: DecorationImage( fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1694164108456-e21c7e575a73?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60"))
           gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.centerLeft,
            colors: [Colors.green,Colors.white70,Colors.black12])
           ),
           child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(
                //   Icons.favorite,
                //   size: 250,
                //   color: Colors.red,]
                // ),
                Image(image:NetworkImage("https://cdn4.iconfinder.com/data/icons/socialcones/508/Amazon-64.png"),width: 100,height:100),
                ),
                )
              ],
            ),
          )
        ))
  }
}
