import 'package:flutter/material.dart';
import 'package:flutterbloc/ui/myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter CRUD Bloc",
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
