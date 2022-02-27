import 'package:flutter/material.dart';
import 'package:flutterapp/pages/BookHome.dart';
import './pages/BookHome.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 54 ;
  int Selected_item = 0 ;
  static const TextStyle optionStyle = TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold);
  // la declaration des widgets :
//  static const List<Widget> _widget_options = <Widget>[
//        Text('This is the first Text', style: optionStyle,),
//        Text('This is the second Text', style: optionStyle,),
//        Text('This is the Third Text', style: optionStyle,),
//  ];
  final _pageOptions = [
      BookHome(),
      //anotherWidget Here (Seconde_)
      //anotherWidget Here (Third)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: _pageOptions.elementAt(Selected_item),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Books")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.navigation),
                title: Text("Navigation ")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart),
                title: Text("Statistique")
            ),
        ],
        onTap: (index) {
            setState(() {
                Selected_item = index ;
            });
        },
        currentIndex: Selected_item
      ),
    );
  }
}
