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

  final Map<String, String> marcas = const {
    'Nike': 'assets/imgs/nike.png',
    'Adidas': 'assets/imgs/adidas.png',
    'Puma': 'assets/imgs/puma.png',
    'Reebok': 'assets/imgs/reebok.png',
    // 'New balance': 'assets/imgs/newbalance.png',
    // 'Vans': 'assets/imgs/vans.png',
    // 'Converse': 'assets/imgs/converse.png',
    // 'Fila': 'assets/imgs/fila.png',
  };

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

          ...marcas.entries.map((marcas) {
            return _tileMarcas(
              marcas.key,
              marcas.value,
              Colors.white,
              Colors.black,
              Colors.amberAccent,
            );
          }),
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

  Widget _tileMarcas(
    String marcaName,
    String marcaImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Icon(Icons.shopping_bag, size: 50),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Image.asset(marcaImage, width: 50, height: 50),
      ),
      subtitle: Text(marcaName),
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
