import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview4(),
  ));
}

class listview4 extends StatelessWidget {
  const listview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                    child: Icon(Icons.account_balance),
                  ),
              childCount: 10)),
    );
  }
}
