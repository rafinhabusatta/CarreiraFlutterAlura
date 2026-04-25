abstract class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    getSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      getSaldo();
    }
  }

  void getSaldo() {
    print("O saldo atual de $titular é: R\$$_saldo");
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      getSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

class ContaSalario extends Conta {
  String cnpj = "00.000.000/0001-00";
  String empresa = "AnyBank";

  ContaSalario(super.titular, super._saldo, this.cnpj, this.empresa);

  void getSalario(double valor) {
    _saldo += valor;
    print(
      "O salário da $empresa, de cnpj $cnpj no valor de R\$$valor, foi depositado!",
    );
  }
}
