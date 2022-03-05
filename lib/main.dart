import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './loginPage.dart' ;
import './register.dart' ;

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var count = 0;

   incrementCount() {
      setState(() {
        count++ ;
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "This is the app bar of the app"
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 250),
            Text("The number of push is : ",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            Text('$count',
            style: TextStyle(fontSize: 30),),
            SizedBox(height: 230,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  FloatingActionButton(
                    heroTag: null,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Icon(Icons.cancel),
                    backgroundColor: Colors.red,
                  ),
              ],
            )
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            incrementCount();
          },
          child: Icon(Icons.add),
        ),
    );
  }
}
