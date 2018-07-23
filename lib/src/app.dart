// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be out custom widget
// This widget must extend "StatelessWidget" base class

class App extends StatelessWidget{

// Must define the 'build' method that returns
// the widgets, that *this* widget will show

Widget build(context){
  return MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hi there!');
        },
      ),
      appBar: AppBar(
        title: Text('Давайте посмотрим картинки!')
      ),
    ),
  );
}
  
}
