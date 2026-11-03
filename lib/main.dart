import 'package:flutter/material.dart';

import 'screens/screen1.dart';

//import 'screens/screen2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta de debug

      title: 'Proyecto 1', // Título de la aplicación
      home:
          Screen1(), // Decide que ventana se mostrará al iniciar la aplicación
    );
  }
}
