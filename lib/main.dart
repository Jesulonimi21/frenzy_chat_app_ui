import 'package:flutter/material.dart';
import 'home_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Chat App Design",
      home: HomePage(),
    );
  }

}