class Questao {
  final int id, resposta;
  final String pergunta;

  Questao({required this.id, required this.pergunta, required this.resposta});
}

const List dados = [
  {
    "id": 1,
    "pergunta":
        "Quanto é 1+1?",
    "resposta": 2,
  },
  {
    "id": 2,
    "pergunta":
        "Quanto é 16/2?",
    "resposta": 8,
  },
  {
    "id": 3,
    "pergunta":
        "Quanto é 2⁴?",
    "resposta": 16,
  },
  {
    "id": 4,
    "pergunta":
        "Quanto é √16?",
    "resposta": 4,
  },
];