import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto; //variável

  final void Function() selecao;

  Resposta(this.texto, this.selecao); //construtor com parâmetro

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 171, 124, 174)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(texto),
        onPressed: selecao,
      ),
    );
  }
}
