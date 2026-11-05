import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> juegos = const {
    'Hollow knigth': 'assets/imgs/hollow.png',
    'Halo': 'assets/imgs/Halo.png',
    'Minecraft': 'assets/imgs/MC.png',
    'Resident evil': 'assets/imgs/RE.png',
    'Fornite': 'assets/imgs/Miku.png',
  };

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
          ...juegos.entries.map((game) {
            return _tileGames(
              game.key,
              game.value,
              Colors.black,
              Colors.white,
              Colors.amberAccent,
            );
          }),

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

  Widget _tileGames(
    String gameName,
    String gameImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(gameImage, width: 50, height: 50),
      title: Text(gameName),
      subtitle: Text('Entretenimiento y diversión'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );

    final espacio = SizedBox(height: 10);

    return Column(children: [tile, espacio]);
  }
}
