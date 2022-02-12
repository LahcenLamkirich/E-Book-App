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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
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
            ],
          ),
        ),
      ),
    );
  }
}
