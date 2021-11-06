import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
          _valorSlider = valor;
        });
        // print(valor);
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('http://www.alucine.es/wp-content/uploads/2015/09/251.jpg'),
      width: _valorSlider,
      fit:BoxFit.contain
    );
  }
}