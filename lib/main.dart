import 'package:flutter/material.dart';


void main() {

  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done_outline),
        onPressed: (){
          print('Hi there!');
        },
      ),
      appBar: AppBar(
        title: Text('Давайте посмотрим картинки!')
      ),
    ),
  );

runApp(app);
}
