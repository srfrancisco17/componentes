import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        child: const Icon(Icons.play_arrow),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();

    setState(() {
      // _width += 10.0;
      // _height += 10.0;
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Colors.primaries[random.nextInt(Colors.primaries.length)];
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
