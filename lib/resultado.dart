import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  
  String resultado;
  Resultado(this.resultado);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {

      var caminhaImagem;
      if(widget.resultado == "cara")
      {
        caminhaImagem = "img/moeda_cara.png";
      }
      else
      {
        caminhaImagem = "img/moeda_coroa.png";
      }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhaImagem),
            GestureDetector(
              child: Image.asset("img/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}