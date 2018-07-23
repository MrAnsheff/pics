// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be out custom widget
// This widget must extend "StatelessWidget" base class
class App extends StatefulWidget{
  createState() {
      // TODO: implement createState
      return AppState();
  }
}

class AppState extends State<App>{

// Must define the 'build' method that returns
// the widgets, that *this* widget will show
var counter = 0;
Widget build(context){
  return MaterialApp(
    home: Scaffold(
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
                      counter += 1;
                    });
        },
      ),
      appBar: AppBar(
        title: Text('Давайте посмотрим картинки!')
      ),
    ),
  );
}
  
}
