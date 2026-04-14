import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
  adicionarNota(notas);
  listarNotas(notas);
}

String getComando() {
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
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
