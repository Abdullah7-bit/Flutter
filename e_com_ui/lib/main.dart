import 'package:e_com_ui/home.dart';
import 'package:flutter/material.dart';
// import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          
          body: Home(),
          
        ));
  }
}
