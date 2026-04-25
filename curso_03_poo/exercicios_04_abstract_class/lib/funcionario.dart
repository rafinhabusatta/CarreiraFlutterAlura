// 5. Criando um programa de registro de funcionários

// Primeiro, crie uma classe abstrata funcionario com os atributos nome de funcionário(a) e um double “salário base” inicializado em 3000 reais, e também um método calcularSalario. Em seguida, implemente, a partir de funcionario, as classes analista, gerente e diretor; sobrescreva o método calcularSalario nelas com os seguintes valores:

//     analista: salário base = salário base + salário base multiplicado por 1.2;
//     gerente: salário base = salário base + salário base multiplicado por 1.5;
//     diretor: salário base = salário base + salário base multiplicado por 2.0.

// Por fim, imprima o cálculo de salário dos funcionários João (analista), Maria (gerente) e Giovana (diretora), conforme o exemplo a seguir:

// Salário do Analista João: R$ 6600.0
// Salário da Gerente Maria: R$ 7500.0
// Salário da Diretora Giovana: R$ 9000.0

abstract class Funcionario {
  String nome;
  double salarioBase;

  Funcionario(this.nome) : salarioBase = 3000.0;

  double calcularSalario();
}

class Analista extends Funcionario {
  Analista(super.nome);
  @override
  double calcularSalario() {
    salarioBase += salarioBase * 1.2;
    return salarioBase;
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome);
  @override
  double calcularSalario() {
    salarioBase += salarioBase * 1.5;
    return salarioBase;
  }
}

class Diretor extends Funcionario {
  Diretor(super.nome);
  @override
  double calcularSalario() {
    salarioBase += salarioBase * 2;
    return salarioBase;
  }
}
