// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

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
List<ImageModel> images = [];

void fetchImage() async{
  counter++;
  var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
  var imageModel = new ImageModel.fromJson(json.decode(response.body));
  setState(() {
      images.add(imageModel);
    });

}

Widget build(context){
  return MaterialApp(
    home: Scaffold(
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: fetchImage,
      ),
      appBar: AppBar(
        title: Text('Давайте посмотрим картинки!')
      ),
    ),
  );
}
  
}
