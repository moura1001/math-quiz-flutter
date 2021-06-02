import 'package:my_first_flutter_application/src/models/Questao.dart';
import 'dart:math';

class GerenciadorQuestoes {

  late int idQuestao;

  List<Questao> _questoes = dados
      .map(
        (questao) => Questao(
            id: questao['id'],
            pergunta: questao['pergunta'],
            resposta: questao['resposta']),
      )
      .toList();
  List<Questao> get questoes => this._questoes;

  late Questao questaoAtual = primeiraQuestao();

  Questao primeiraQuestao(){
    idQuestao = Random().nextInt(questoes.length);
    return questoes.elementAt(idQuestao);
  }

  void analisarResposta(int respostaUsuario) {
    if (questaoAtual.resposta == respostaUsuario)
      questaoAtual = proximaQuestao();
  }

  Questao proximaQuestao(){
    idQuestao = (idQuestao + 1) % questoes.length;
    return questoes.elementAt(idQuestao);
  }
}