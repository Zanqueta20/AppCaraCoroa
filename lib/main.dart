import 'dart:math';

import 'package:appcaracoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CaraCoroa(),
    debugShowCheckedModeBanner: false,
  ));
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {

  void exibirResultado()
  {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Resultado(resultado))
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("img/logo.png"),
            GestureDetector(
              child: Image.asset("img/botao_jogar.png"),
              onTap: exibirResultado,
            )
          ],
        ),
      ),
      );
  }
}