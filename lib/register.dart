import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/services/auth.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirmPassword = "";
  String Error = "";

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/login.png', width: 200, height: 260,),
                ],
              ),
//              Container(
//                padding: EdgeInsets.symmetric(horizontal: 10),
//                alignment: Alignment.center,
//                child: Form(
//                  child: TextFormField(
//                    maxLength: 50,
//                    decoration: InputDecoration(
//                      hintText: "Username",
//                      labelText: "Username",
//                      border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(40),
//                        borderSide: BorderSide(color: Colors.grey)
//                      ),
//                      focusedBorder: OutlineInputBorder(
//                        borderRadius:BorderRadius.circular(40),
//                        borderSide: BorderSide(color: Colors.blue),
//                      )
//                    ),
//                  ),
//                ),
//              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? 'Enter The Email' : null,
                    onChanged: (val){
                      setState(() {
                          email = val ;
                      });
                    },
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
                  key: _formKey1,
                  child: TextFormField(
                    obscureText: true,
                    validator: (val) => val.length < 6 ? "Password must be more than 6" : null,
                    onChanged: (val){
                      setState(() {
                        password = val ;
                      });
                    },
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
                  key: _formKey2,
                  child: TextFormField(
                    obscureText: true,
                    validator: (val) => val.length < 6 ? "Password must be more than 6" : null,
                    onChanged: (val){
                      setState(() {
                        confirmPassword = val ;
                      });
                    },
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
                      onPressed: () async {
                        if(_formKey.currentState.validate() && _formKey1.currentState.validate() && _formKey2.currentState.validate()){
                            dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                            if(result == null){
                                setState(() {
                                  Error = 'Please Enter valide Data' ;
                                });
                            }else {
                              print("Registered Succesfully");
                            }
                        }
                      },
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
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                   Navigator.pop(context) ;
                },
                child: Text("You Already Have An Account",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(76, 115, 253,1),
                    fontWeight: FontWeight.bold
                ),),
              ),
              Text(
                Error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              )
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