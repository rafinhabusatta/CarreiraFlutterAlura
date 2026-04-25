abstract class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes() {
    print("Ingrediente: $nome, Tipo: $tipo");
  }
}

class Fruta extends Ingrediente {
  Fruta(String nome) : super(nome, 'Fruta');

  @override
  void detalhes() {
    print(
      "Detalhe: Em geral, são vegetais que não podem ser cozidos nas receitas.",
    );
  }
}

class Legume extends Ingrediente {
  Legume(String nome) : super(nome, 'Legume');

  @override
  void detalhes() {
    print(
      "Detalhe: Em geral, são vegetais que podem ser cozidos nas receitas.",
    );
  }
}

class Tempero extends Ingrediente {
  Tempero(String nome) : super(nome, 'Tempero');

  @override
  void detalhes() {
    print("Detalhe: São ingredientes usados para realçar o sabor dos pratos.");
  }
}
