import 'dart:io';

void main() {
  print("Digite um número:");
  double nro = double.parse(stdin.readLineSync()!);

  double dobro = nro * 2;
  print("O dobro de $nro é $dobro");
}
