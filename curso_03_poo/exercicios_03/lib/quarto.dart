abstract class Quarto {
  String tipo;
  double valorDiaria;
  int nroDiarias;

  Quarto(this.tipo, this.valorDiaria, this.nroDiarias);

  void reservar() {
    print("Quarto do tipo $tipo reservado por $nroDiarias diárias.");
  }

  void calcularValorTotal() {
    double valorTotal = valorDiaria * nroDiarias;
    print("O valor total da reserva do quarto $tipo é: R\$ $valorTotal");
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(super.tipo, super.valorDiaria, super.nroDiarias);
}

class QuartoMedio extends Quarto {
  QuartoMedio(super.tipo, super.valorDiaria, super.nroDiarias);

  void cafeDaManha() {
    print("Servindo café da manhã no quarto do $tipo");
  }
}

class QuartoLuxo extends QuartoMedio {
  QuartoLuxo(super.tipo, super.valorDiaria, super.nroDiarias);

  void servicoDeQuarto() {
    print("Limpando o quarto $tipo");
  }
}
