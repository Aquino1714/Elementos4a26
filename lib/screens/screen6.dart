import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  final String nombre;
  final bool meGustaFlutter;
  final double nivelFlutter;
  final int preferenciaMovil;
  final bool usaEmulador;
  final bool usaSmartphone;
  final bool usaNavegador;

  const Screen6({
    super.key,
    required this.nombre,
    required this.meGustaFlutter,
    required this.nivelFlutter,
    required this.preferenciaMovil,
    required this.usaEmulador,
    required this.usaSmartphone,
    required this.usaNavegador,
  });

  String get _preferenciaTexto {
    switch (preferenciaMovil) {
      case 1:
        return 'Kotlin';
      case 2:
        return 'Flutter';
      case 3:
        return 'React Native';
      default:
        return 'Sin selección';
    }
  }

  String get _dispositivosTexto {
    final List<String> usados = [];
    if (usaEmulador) usados.add('Emulador');
    if (usaSmartphone) usados.add('Smartphone');
    if (usaNavegador) usados.add('Navegador Web');
    return usados.isEmpty ? 'Ninguno' : usados.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 6')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Datos recibidos',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          _fila('Nombre', nombre.isEmpty ? 'Sin nombre' : nombre),
          _fila('¿Te gusta flutter?', meGustaFlutter ? 'Sí' : 'No'),
          _fila('Nivel de gusto por flutter', '${nivelFlutter.round()}'),
          _fila('Preferencia en desarrollo móvil', _preferenciaTexto),
          _fila('Usa para correr sus apps', _dispositivosTexto),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _fila(String titulo, String valor) {
    return Card(
      child: ListTile(title: Text(titulo), subtitle: Text(valor)),
    );
  }
}
