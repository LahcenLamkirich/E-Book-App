import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/login.png',
                      height: 210,
                      width: 250
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.height,
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    maxLength: 25,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                child: Form(
                  child: TextFormField(
                    maxLength: 25,
                    decoration: InputDecoration(
                      hintText: "Passowrd",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
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
                  child: Text("Sign In",
                      style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 25,),
              Text('Not Registered Yet ? ', style: TextStyle(
                fontSize: 17,
              ),),
              SizedBox(height: 12,),
              Text("Create An Account ", 
              style: TextStyle(
                  color: Color.fromRGBO(76, 115, 253, 1),
                  fontSize: 16,
              ),
              )
            ],
          ),
        ),
      );
  }
}
