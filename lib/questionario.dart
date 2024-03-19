import 'package:flutter/material.dart';
import 'package:flutter_project/questao.dart';
import 'package:flutter_project/resposta.dart';

class Questionario extends StatelessWidget {
  //criei parâmetros
  final List<Map<String, Object>> perguntas;
  final int pergunta;
  final void Function(int) responder;

  Questionario({
    //construtor que recebe os 3 parâmetros
    required this.perguntas,
    required this.pergunta,
    required this.responder,
  });

  bool get temPergSelecionada {
    return pergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPergSelecionada
        ? perguntas[pergunta]["respostas"] as List<Map<String, Object>>
        : [];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Questao(perguntas[pergunta]["texto"].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resp["texto"].toString(),
            () => responder(int.parse(resp["nota"].toString())),
          );
        }).toList(),
      ],
    );
  }
}
