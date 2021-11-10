// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class MyWidgetsOne extends StatefulWidget {
  MyWidgetsOne({Key? key}) : super(key: key);

  @override
  _MyWidgetsOneState createState() => _MyWidgetsOneState();
}

class _MyWidgetsOneState extends State<MyWidgetsOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Widget One'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInputMultiline()
        ],
      ),
    );
  }

  final _controller = TextEditingController();


  Widget _crearInputMultiline(){
    return TextField(
      maxLines: 2,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${_controller.text.split(' ').length} words',
        labelText: 'Ingresar texto multilinea',
        hintText: 'type something...',
        border: const OutlineInputBorder()
      ),
    );
  }
}