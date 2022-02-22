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
      body: Row(
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    Text("test")

                ],
              ),
            )
          ],
      )
    );
  }
}
