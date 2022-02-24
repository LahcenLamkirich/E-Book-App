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
        child: ListTile(
          trailing: Icon(Icons.add),
          title: Text("lahcen"),
          subtitle: Text("Lamkirich"),
          leading: Icon(Icons.add_circle_outline),
        ),
      )
    );
  }
}
