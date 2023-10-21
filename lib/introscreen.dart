import 'package:flutter/material.dart';
import 'package:flutter_application_1/statefulspashpage.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: introscreen(),
  ));
}

class introscreen extends StatelessWidget {
  const introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration decorationpage = PageDecoration(
     titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
     bodyTextStyle: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown),
     boxDecoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.white,Colors.orangeAccent,Colors.yellow
      
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight
      )
     )
    );
    return IntroductionScreen(
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>splash2())),
      onDone: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>splash2())),
      showSkipButton: true,
      skip:Text("Skip") ,
      //showBackButton: true,
      back: Text("Back"),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        size: Size(12,10),
        activeSize: Size(22, 10),
        activeColor: Colors.green
      ),
      pages: [
        PageViewModel(
            decoration: decorationpage,
            title: "First Page",
            body: "Introduction package for running flutter app;ication",
            image: introimage(
                "https://images.unsplash.com/photo-1692317799558-ee4ce64d3c9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Qm4tRGpyY0Jyd298fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",)),
        PageViewModel(
          decoration: decorationpage,
            title: "Second Page",
            body: "Introduction package for running the page",
            image: introimage(
                "https://images.unsplash.com/photo-1695466326026-464159dc892e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDExfEJuLURqcmNCcndvfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60")),
        PageViewModel(
          decoration: decorationpage,
            title: "Third Page",
            body: "Introduction package for the favourite application",
            image: introimage(
                "https://images.unsplash.com/photo-1680391813303-902726f8a2cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI4fEJuLURqcmNCcndvfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"))
      ],
    );
  }

  Widget introimage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imgpath),
              )
            ),
            width: double.infinity,
              height: 250,
           
          ),
          Text("Home of the first Page")
        ],
      ),
    );
  }
}
