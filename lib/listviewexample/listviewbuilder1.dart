import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: listviewbuilder1(),
  ));
}

class listviewbuilder1 extends StatelessWidget {
  listviewbuilder1({super.key});
   var title = [
    "Hafiz",
    "Amruthesh",
    "Faeiz",
    "Muneer",
    "Ajmal",
    "Shafi",
    "Anand",
    "Sameem",
    "Kannan",
    "Suhail"
  ];
  var images = [
    "assets/images/amru.png",
    "assets/images/amru.jpg",
    "/assets/images/faeiz.jpg",
    "assets/images/munnas.jpg",
    "assets/images/ajmal.jpg",
    "assets/images/shafi.jpg",
    "assets/images/anand.jpg",
    "assets/images/sameem.jpg",
    "assets/images/kannan.jpg",
    "assets/images/suhail.jpg",
  ];
  var Date = [
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm",
    "September 12,9:15 pm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: ListView(children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.insert_link_outlined),
            backgroundColor: Colors.teal,
          ),
          title: Text("Create Call Link"),
          subtitle: Text("Share a Link"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("Recent"),
        ),
        ListView.builder(
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(title[index]),
                  subtitle: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.arrowTrendUp,size: 12,color: Colors.green,),
                      Text(Date[index]),
                    ],
                  ),
                  leading:
                      CircleAvatar(backgroundImage: AssetImage(images[index])),
                  trailing: Icon(Icons.phone,color: Colors.teal,),
                ),
              );
            }),
      ]),
    );
  }
}
