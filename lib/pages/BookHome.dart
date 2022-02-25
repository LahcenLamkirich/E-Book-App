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
                    width: 200,
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
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                            Image.asset(
                              "assets/images/login.png",
                              height: 120,
                              width: 100,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: <Widget>[
                                Text("Name of the book",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 10,),
                                Text("The name of the Author",
                                style: TextStyle(
                                  fontSize: 15
                                ),
                                )
                              ],
                            )
                          ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10,),
                          Image.asset(
                            "assets/images/login.png",
                            height: 120,
                            width: 100,
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: <Widget>[
                              Text("Name of the book",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                              SizedBox(height: 10,),
                              Text("The name of the Author",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10,),
                          Image.asset(
                            "assets/images/login.png",
                            height: 120,
                            width: 100,
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: <Widget>[
                              Text("Name of the book",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                              SizedBox(height: 10,),
                              Text("The name of the Author",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
