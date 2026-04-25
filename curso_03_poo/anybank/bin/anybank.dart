import 'package:anybank/conta.dart';

void main() {
  ContaCorrente contaChris = ContaCorrente("Chris", 2500);
  ContaPoupanca contaDani = ContaPoupanca("Dani", 3000);
  ContaSalario contaSalarioCatarina = ContaSalario(
    "Catarina",
    3000,
    "00.000.000/0001-00",
    "AnyBank",
  );

  contaChris.enviar(2700);

  contaDani.enviar(3300);
  contaDani.calculaRendimento();
  contaDani.getSaldo();

  contaSalarioCatarina.getSaldo();
}
