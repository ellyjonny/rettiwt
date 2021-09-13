import 'package:flutter/material.dart';
import 'package:rettiwt/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  build(context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}