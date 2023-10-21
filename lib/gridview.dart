import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridview1(),
    debugShowCheckedModeBanner: false,
  ));
}

class gridview1 extends StatelessWidget {
  var ico = [
    Icons.heart_broken,
    Icons.ring_volume,
    Icons.camera_alt_outlined,
    Icons.airplane_ticket_outlined,
    Icons.wifi,
    Icons.phone,
    Icons.message,
    Icons.sim_card
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            color: Colors.primaries[index % Colors.primaries.length],
            child: Row(
              children: [
                Icon(
                  ico[index],
                  size: 60,
                  color: Colors.black38,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Heart Shaker",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
