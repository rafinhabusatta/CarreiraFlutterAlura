abstract class SerVivo {
  void mostrarCaracteristicas();
}

class Planta implements SerVivo {
  String nome;
  String tipo;
  Planta(this.nome, this.tipo);
  @override
  void mostrarCaracteristicas() {
    print('$nome:  é uma planta, não tem os cinco sentidos, é uma $tipo');
  }
}

class Animal implements SerVivo {
  String nome;
  String tipo;
  Animal(this.nome, this.tipo);
  @override
  void mostrarCaracteristicas() {
    print(
      '$nome: tem cinco sentidos, pensa e fala, é $tipo e vive em média 75 anos.',
    );
  }
}
