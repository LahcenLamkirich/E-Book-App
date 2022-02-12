import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This is the register page !", style: TextStyle(fontSize: 22),),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              color: Colors.red,
              child: Text("Go Back ", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
