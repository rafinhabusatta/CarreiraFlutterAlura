import 'dart:io';

void main() {
  // Lista para armazenar os nomes dos alunos e suas notas
  List<List<double>> notas = <List<double>>[];
  List<String> alunos = <String>[];
  menu(notas, alunos);
}

// Funções de registro do nome dos alunos e suas notas
void registroAluno(List<String> alunos, List<List<double>> notas) {
  print("Digite o nome do aluno: ");
  var aluno = stdin.readLineSync();
  if (aluno != null) {
    alunos.add(aluno);
    registroNotas(notas);
  } else {
    print("Por favor, digite um nome.");
    return registroAluno(alunos, notas);
  }
}

List<List<double>> registroNotas(List<List<double>> notas) {
  List<double> notasAluno = [];
  while (true) {
    print('Digite uma nota para o aluno (ou "fim para terminar")');
    var comando = stdin.readLineSync();
    if (comando == "fim") {
      print("saindo...");
      break;
    }
    if (comando != null) {
      double nota = double.parse(comando);
      notasAluno.add(nota);
    }
  }
  notas.add(notasAluno);
  return notas;
}

List<double> mediaNotas(List<List<double>> notas) {
  List<double> media = [];
  for (int i = 0; i < notas.length; i++) {
    double soma = notas[i].reduce((curr, next) => curr + next);
    double mediaAluno = soma / notas[i].length;
    media.add(mediaAluno);
  }

  return media;
}

void showData(List<List<double>> notas, List<String> alunos) {
  List<double> media = mediaNotas(notas);
  for (int i = 0; i < alunos.length; i++) {
    print("${alunos[i]} - ${media[i]}");
  }
}

String getComando() {
  print(
    "\nDigite uma opção:\n1 - Registrar um aluno e sua nota;\n2 - Ver a lista de todos alunos registrados e suas médias escolares;\n3 - sair do programa:\n ",
  );
  List<String> comandos = ['1', '2', '3'];
  var comando = stdin.readLineSync();
  if (comando == null || !comandos.contains(comando)) {
    print("Comando inválido. Por favor, tente novamente.");
    return getComando();
  }
  return comando;
}

void menu(List<List<double>> notas, List<String> alunos) {
  cabecalho();

  var comando = getComando();
  switch (comando) {
    case '1':
      registroAluno(alunos, notas);
      menu(notas, alunos);
      break;
    case '2':
      showData(notas, alunos);
      menu(notas, alunos);
      break;
    case '3':
      print("Finalizando...");
      exit(0);
  }
}

void cabecalho() {
  print(
    " _____                   _       _                   _____     _           _    __        _       ",
  );
  print(
    "| __  |___ _____ ___ _ _|_|___ _| |___    ___ ___   |   __|___| |_ ___ ___| |  |  |   ___| |_ ___ ",
  );
  print(
    "| __ -| -_|     |___| | | |   | . | . |  | .'| . |  |__   |  _|   | . | . | |  |  |__| .'| . |_ -|",
  );
  print(
    "|_____|___|_|_|_|    \\_/|_|_|_|___|___|  |__,|___|  |_____|___|_|_|___|___|_|  |_____|__,|___|___|",
  );
}
