import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

String getComando() {
  print(
    "Digite um comando: \n1 - Adicionar nota, \n2 - Listar notas, \n3 - Sair",
  );
  List<String> comandos = ["1", "2", "3"];
  String? entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido!");
    return getComando();
  }

  return entrada!;
}

List<String> adicionarNota(List<String> notas) {
  print("Digite a nota que deseja adicionar:");
  String? nota = stdin.readLineSync();
  if (nota == null || nota.isEmpty) {
    print("Nota inválida!");
    return adicionarNota(notas);
  }
  notas.add(nota);
  return notas;
}

void listarNotas(List<String> notas) {
  for (int i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {
  print("\nBem-vindo ao sistema de notas!\n");
  cabecalho();
  print("");
  String comando = getComando();
  switch (comando) {
    case "1":
      adicionarNota(notas);
      menu(notas);
      break;
    case "2":
      listarNotas(notas);
      menu(notas);
      break;
    case "3":
      print("Saindo...");
      exit(0);
  }
}

void cabecalho() {
  print("   ,   ,  ");
  print(
    "  /////|  ░███    ░██   ░██████   ░██████████   ░███      ░██████     (\_/)",
  );
  print(
    " ///// |  ░████   ░██  ░██   ░██      ░██      ░██░██    ░██   ░██  =(°w°)=\)",
  );
  print(
    "|~~~|  |  ░██░██  ░██ ░██     ░██     ░██     ░██  ░██  ░██            )   (  ",
  );
  print(
    "|===|  |  ░██ ░██ ░██ ░██     ░██     ░██    ░█████████  ░████████    (__ __)",
  );
  print(
    "|j  |  |  ░██  ░██░██ ░██     ░██     ░██    ░██    ░██         ░██   /------\\",
  );
  print(
    "| g |  |  ░██   ░████  ░██   ░██      ░██    ░██    ░██  ░██   ░██   * / |    ||",
  );
  print(
    "|  s| /   ░██    ░███   ░██████       ░██    ░██    ░██   ░██████       ~~   ~~",
  );
  print("|===|/");
  print("'---'");
}

/*  print("   ,   ,  ");
  print("  /////|  ░███    ░██   ░██████   ░██████████   ░███      ░██████     (\_/)");
  print(" ///// |  ░████   ░██  ░██   ░██      ░██      ░██░██    ░██   ░██  =(°w°)=\)");
  print("|~~~|  |  ░██░██  ░██ ░██     ░██     ░██     ░██  ░██  ░██            )   (  ");
  print("|===|  |  ░██ ░██ ░██ ░██     ░██     ░██    ░█████████  ░████████    (__ __)");
  print("|j  |  |  ░██  ░██░██ ░██     ░██     ░██    ░██    ░██         ░██   /------\\");
  print("| g |  |  ░██   ░████  ░██   ░██      ░██    ░██    ░██  ░██   ░██   * / |    ||");
  print("|  s| /   ░██    ░███   ░██████       ░██    ░██    ░██   ░██████       ~~   ~~");
  print("|===|/");
  print("'---'");
*/
