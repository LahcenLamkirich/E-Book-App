import 'package:flutter/material.dart';

class BookHome extends StatefulWidget {
  @override
  _BookHomeState createState() => _BookHomeState();
}

class _BookHomeState extends State<BookHome> {
  static const items = ["1st","2nd","3rd"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  const ListTile(
                      leading: Icon(Icons.add_circle_outline),
                      title: Text("First Card"),
                      subtitle: Text("The Substitles"),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
