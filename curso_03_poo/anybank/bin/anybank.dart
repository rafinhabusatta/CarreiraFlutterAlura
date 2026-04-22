void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);

  List<Conta> contas = <Conta>[contaRoberta, contaMatheus];

  for (Conta conta in contas) {
    print("${conta.nome} - ${conta.saldo}");
  }

  contaRoberta.saldo = 5000;
  print(contaRoberta.saldo);
}

class Conta {
  String nome;
  double saldo;

  Conta(this.nome, this.saldo);
}
