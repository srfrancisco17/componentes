import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp')),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final widgetTemp = ListTile(
        title: Text(opt),
      );

      lista
        ..add(widgetTemp)
        ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.wallet_giftcard),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) {
                return AlertPage();
              });
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
