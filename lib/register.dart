import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 0),
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 0,),
              Image.asset('assets/images/login.png', width: 200, height: 260,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.blue),
                      )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    maxLength: 50,
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.blue),
                        )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    maxLength: 50,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.blue),
                        )
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    maxLength: 50,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.blue),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // the button container :
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 35, ),
                      color: Color.fromRGBO(76, 115, 253,1),
                      textColor: Colors.white,
                      child: Text("Sign Up",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    child: CustomPaint(
                      painter: OpenPainter(),
                    ),
                  ),
                  Container(
                    child: CustomPaint(
                      painter: OpenPainter1(),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// la declaration des classes
class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffC0C0C0)
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(40, 0) & Size(100, 5), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class OpenPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromRGBO(76, 115, 253,1)
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(100, 0) & Size(60, 5), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}