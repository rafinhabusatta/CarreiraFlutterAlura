import 'package:exercicios_lista/animal.dart';
import 'package:exercicios_lista/ingrediente.dart';
import 'package:exercicios_lista/quarto.dart';

void main() {
  Cachorro cachorro = Cachorro();
  cachorro.emitirSom();
  cachorro.abanarRabo();
  Gato gato = Gato();
  gato.emitirSom();
  gato.arranharMoveis();

  QuartoSimples quartoSimples = QuartoSimples("Simples", 80.0, 3);
  quartoSimples.reservar();
  quartoSimples.calcularValorTotal();

  QuartoMedio quartoMedio = QuartoMedio("Médio", 250.0, 2);
  quartoMedio.reservar();
  quartoMedio.calcularValorTotal();
  quartoMedio.cafeDaManha();

  QuartoLuxo quartoLuxo = QuartoLuxo("LUXO", 1000.0, 1);
  quartoLuxo.reservar();
  quartoLuxo.calcularValorTotal();
  quartoLuxo.cafeDaManha();
  quartoLuxo.servicoDeQuarto();

  Fruta banana = Fruta("Banana");
  print("Ingrediente: ${banana.nome}");
  print("Tipo: ${banana.tipo}");
  banana.detalhes();

  Legume cenoura = Legume("Cenoura");
  print("Ingrediente: ${cenoura.nome}");
  print("Tipo: ${cenoura.tipo}");
  cenoura.detalhes();

  Tempero sal = Tempero("Sal");
  print("Ingrediente: ${sal.nome}");
  print("Tipo: ${sal.tipo}");
  sal.detalhes();
}
