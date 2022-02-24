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
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)
              ),
              color: Color.fromRGBO(76, 115, 253,1),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 70,
                  left: 0,
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 95,
                  left: 20,
                  child: Text("The Books",
                    style: TextStyle(fontSize: 25,
                      color: Color.fromRGBO(76, 115, 253,1),
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
