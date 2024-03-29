import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: customsliver(),
  ));
}

class customsliver extends StatelessWidget {
  const customsliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: Text("Sliver Example"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(40),
                ),
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    suffixIcon: Icon(Icons.camera),
                    prefixIcon: Icon(Icons.search_rounded)),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Name"),
              subtitle: Text("9656263557"),
            ),
          )))
        ],
      ),
    );
  }
}
