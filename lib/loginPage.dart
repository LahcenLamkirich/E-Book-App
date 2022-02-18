import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/register.dart';

class LoginPage extends StatefulWidget {
  @override
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/login.png',
                      height: 230,
                      width: 260
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey)
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                width: MediaQuery.of(context).size.width,
                child: Form(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Passowrd",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.blue),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
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
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text("Sign In",
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                  Container(
                    child: CustomPaint(
                      painter: OpenPainter12(),
                    ),
                  ),
                  Container(
                    child: CustomPaint(
                      painter: OpenPainter123(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Text('Not Registered Yet ? ', style: TextStyle(
                fontSize: 17,
              ),),
              SizedBox(height: 12,),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text("Create An Account ",
                  style: TextStyle(
                      color: Color.fromRGBO(76, 115, 253, 1),
                      fontSize: 16,
                  ),
                  ),
              ),
            ],
          ),
        ),
      );
  }
}

class OpenPainter12 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffC0C0C0)
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(60, 0) & Size(100, 5), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
class OpenPainter123 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color.fromRGBO(76, 115, 253,1)
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(40, 0) & Size(60, 5), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
