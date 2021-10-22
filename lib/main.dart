// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:componentes/src/pages/home_temp.dart';
import 'package:componentes/src/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Componentes App', home: HomePage());
  }
}
