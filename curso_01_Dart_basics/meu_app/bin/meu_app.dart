import 'dart:io';

void main() {
  print('Olá, me chamo Dart. Qual seu nome?');
  var entrada = stdin.readLineSync();
  print('Prazer em te conhecer, $entrada!');
}
