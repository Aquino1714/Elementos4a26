import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const new({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  // Variables para almacenar los valores de entrada
  bool _switchValue = false;
  double _sliderValue = 0.0;
  TextEditingController _textController = TextEditingController();
  int radioSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entrada de datos'),

          // llamas a los widgets de entrada de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider(),
          _entradaRadio(),
        ],
      ),
    );
  }

  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      obscureText: false,
      obscuringCharacter: '*',
      maxLength: 500,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingrese su nombre',
        border: UnderlineInputBorder(),
      ),
      onChanged: (value) {
        print('Valor del TextField: $value');
      },
    );
  }

  Row _entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te gusta flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
              print('El valor de Switch es: $_switchValue');
            });
          },
        ),
      ],
    );
  }

  Column _entradaSlider() {
    return Column(
      children: [
        Text('Indica que tanto te gusta flutter: '),
        Slider(
          min: 0.0,
          max: 500.0,
          activeColor: Colors.red,
          thumbColor: Colors.white,
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              print('Se cambio el slider: $_sliderValue');
            });
          },
        ),
      ],
    );
  }

  Column _entradaRadio() {
    final ListTile kotlin = ListTile(
      title: const Text('Kotlin'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 1,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile flutter = ListTile(
      title: const Text('flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 2,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile reactNative = ListTile(
      title: const Text('React Native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 3,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        ),
      ),
    );

    return Column(
      children: [
        Text('Que prefieres para desarrollo movil?'),
        kotlin,
        flutter,
        reactNative,
      ],
    );
  }
}
