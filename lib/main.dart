
import 'package:flutter/material.dart';
import 'package:flutter_ui_design/custom_container.dart';
import 'package:flutter_ui_design/home_page.dart';
const String imageUrl ='https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg';

void main(){
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
const String txt ='''There are many variation of passages of Lorem 
Ipsum available, but the majority have 
suffered. ''';