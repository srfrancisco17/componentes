
// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();

    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        // _agregar10();
        fetchData();
      }  
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  final ScrollController _scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading()
        ],
      )
      
    );
  }

  Widget _crearLista(){
    return ListView.builder(
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index){

        final imagen = _listaNumeros[index];

        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
        );
      },
      itemCount: _listaNumeros.length,
    );  
  }


  void _agregar10(){
    for (var i = 0; i < 10; i++) {
     _ultimoItem++; 
     _listaNumeros.add(_ultimoItem);
    }

    setState(() {
      
    });
  }

  Future fetchData() async {
    
    _isLoading = true;

    setState(() {});

    final duration = Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP(){
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );
    _agregar10();
  }

  _crearLoading() {
    if (_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max ,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0,)
        ],
      );
      
    }else{
      return Container();
    }
  }

}