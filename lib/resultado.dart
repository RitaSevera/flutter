import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //final String texto = "Parabéns! Chegou ao final do formulário.";
  final int pontuacao;
  final void Function() reiniciar;

  Resultado(this.pontuacao, this.reiniciar);

  String get resultado {
    if (pontuacao < 8) {
      return "Mehhhh";
    } else if (pontuacao < 12) {
      return "Podia ser pior";
    } else if (pontuacao < 16) {
      return "Nada mal";
    } else {
      return "Sim senhora! Uau";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, //centrar
      children: <Widget>[
        Center(
          child: Text(
            //texto,
            resultado,
            style: TextStyle(fontSize: 22),
          ),
        ),
        ElevatedButton(
          onPressed: reiniciar,
          child: Text("Reiniciar o questionário?"),
        ),
      ],
    );
  }
}
