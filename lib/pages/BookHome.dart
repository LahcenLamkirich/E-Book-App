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
      body: ListView.builder(
       scrollDirection: Axis.vertical,
       itemCount:3,
       itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            );
          },
       )
    );
  }
}
