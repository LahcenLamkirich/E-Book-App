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
      body: Column(
        children: <Widget>[
          Container(
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)
              ),
              color: Colors.purple
            ),
          )
        ],
      )
    );
  }
}
