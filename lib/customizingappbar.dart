import 'package:flutter/material.dart';
import 'package:flutter_application_1/listviewexample/listview2.dart';
import 'package:flutter_application_1/listviewexample/listviewbuilder1.dart';
import 'package:flutter_application_1/listviewexample/listviewconstructor.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    debugShowCheckedModeBanner: false,
    home: appbar1(),
  ));
}

class appbar1 extends StatelessWidget {
  const appbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15),
           Icon(Icons.search_rounded),
           PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New Broadcast")),
              PopupMenuItem(child: Text("Linked Devices")),
              PopupMenuItem(child: Text("Starred Messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
    
            ];
           })],
           bottom:PreferredSize(child: Container(
            child: TabBar(
              isScrollable: true,
              tabs: [
              Tab(icon:FaIcon(FontAwesomeIcons.users)),
              Tab(text: "Chats"),
              Tab(text: "Updates"),
              Tab(text: "Calls")
            ]),
           ), preferredSize:Size.fromHeight(AppBar().preferredSize.height ))
        ),
        body: TabBarView(children:[
          listview2(),
          listviewbuilder1(),
          listview1(),
          loginpage()
        ]),
      ),
    );
  }
}
