import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final games = const [
    'Minecraft',
    'Fortnite',
    'Resident evil',
    'Halo',
    'God of war',
    'Silent hill',
    'Hollow Knight',
    'Final Fantasy',
  ];

  final marcas = const [
    'Nike',
    'Adidas',
    'Puma',
    'Reebok',
    'New balance',
    'Vans',
    'Converse',
    'Fila',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...games.map(
            (game) => ListTile(
              leading: Icon(Icons.videogame_asset),
              title: Text(game),
              subtitle: Text('Entretenimiento y diversión'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: const Color.fromARGB(255, 60, 60, 60),
              iconColor: Colors.white,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          Divider(),

          ...marcas.map(
            (marca) => ListTile(
              leading: Icon(Icons.abc_rounded),
              title: Text(marca),
              subtitle: Text('Marca de ropa y calzado'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: const Color.fromARGB(139, 183, 181, 181),
              iconColor: const Color.fromARGB(255, 12, 12, 12),
              textColor: const Color.fromARGB(255, 8, 8, 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
