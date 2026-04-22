void main() {
  Receita macarraoAoPesto = Receita('Macarrão ao Pesto', 20);
  Receita lasanha4Queijos = Receita('Lanha 4 queijos', 32);
  Receita burrataComPesto = Receita('Burrata com pesto', 28);

  List<Receita> receitas = <Receita>[
    macarraoAoPesto,
    lasanha4Queijos,
    burrataComPesto,
  ];

  for (Receita receita in receitas) {
    print("${receita.nome} - ${receita.preco}");
  }
}

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}
