import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valentine/screens/screen01.dart';


void main() => runApp(ValentineApp());

class ValentineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Pacifico',
      ),
      home: Screen01(),
    );
  }
}