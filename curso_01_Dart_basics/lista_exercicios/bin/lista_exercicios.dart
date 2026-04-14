// void main() {
//   print('Hello, World!');
// }

// import 'dart:io';
// void main() {
//   print("Olá, me chamo Dart. Qual o seu nome?");
//   var nome = stdin.readLineSync();
//   print("Muito prazer, $nome. Vamos fazer vários programas juntos.");
// }

// import 'dart:io';

// void main() {
//   print("Olá, me chamo Dart. Qual o seu nome?");
//   var nome = stdin.readLineSync();

//   print("Digite a sua idade:");
//   var idade = stdin.readLineSync();

//   print("Olá $nome, você tem $idade anos.");
// }

// 2.1) Calculando o dobro de um número
// import 'dart:io';

// void main() {
//   print("Digite um número:");
//   double nro = double.parse(stdin.readLineSync()!);

//   double dobro = nro * 2;
//   print("O dobro de $nro é $dobro");
// }

// 2.2) Descobrindo a média de idades
// import 'dart:io';

// void main() {
//   print("Digite a idade da primeira pessoa:");
//   int age1 = int.parse(stdin.readLineSync()!);

//   print("Digite a idade da segunda pessoa:");
//   int age2 = int.parse(stdin.readLineSync()!);

//   print("Digite a idade da terceira pessoa:");
//   int age3 = int.parse(stdin.readLineSync()!);

//   double averageAge = (age1 + age2 + age3) / 3;
//   print("A média das idades é $averageAge");
// }

// 2.3) Escrevendo a ficha de participante
// void main() {
//   String name = "Rafael";
//   String cpf = "123.456.789-00";
//   int age = 29;
//   int height = 167;
//   bool partOfCommunity = true;

//   print(
//     "Eu sou $name\nmeu CPF é $cpf\ntenho $age anos\ne meço $height cm de altura\nFaço parte da comunidade? $partOfCommunity",
//   );
// }

// 2.4) Calculando o salário do freela
// import 'dart:io';

// void main() {
//   print("Digite o número de horas trabalhadas:");
//   double hoursWorked = double.parse(stdin.readLineSync()!);

//   double salaryPerHour = 50;
//   double salary = (hoursWorked * salaryPerHour) * 0.95;
//   print("O salário líquido é R\$ $salary");
// }

// 2.5) Consertando erros em um programa
// import 'dart:io';

// double saldo = 1000.0; // Saldo inicial em reais

// void main() {
//   print('Boas-vindas ao seu banco digital!');
//   print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

//   print('Digite o valor do Pix que deseja realizar:');
//   double valorPix = double.parse(stdin.readLineSync()!);

//   saldo -= valorPix;

//   print('Pix realizado com sucesso!');
//   print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
// }

// 2.6) Identificando e corrigindo tipos no Dart
// import 'dart:io';

// void main() {
//   double pontosIniciais = 100;
//   double pontosRetirados;

//   print("Você tem $pontosIniciais pontos.");
//   print("Quantos pontos você gostaria de resgatar?");
//   pontosRetirados = double.parse(stdin.readLineSync()!);

//   double pontosRestantes = pontosIniciais - pontosRetirados;

//   print(
//     "Você resgatou $pontosRestantes pontos. Pontos restantes: $pontosRestantes.",
//   );
// }

// 2.7) Refatorando o código do clube de benefícios com função
// import 'dart:io';

// void main() {
//   double pontosIniciais = 100;
//   double pontosRetirados;

//   print("Você tem $pontosIniciais pontos.");
//   print("Quantos pontos você gostaria de resgatar?");
//   pontosRetirados = double.parse(stdin.readLineSync()!);

//   double pontosRestantes = pointsBalance(pontosIniciais, pontosRetirados);

//   print(
//     "Você resgatou $pontosRestantes pontos. Pontos restantes: $pontosRestantes.",
//   );
// }

// double pointsBalance(double totalPoints, double withdrawnPoints) {
//   double balance = totalPoints - withdrawnPoints;
//   return balance;
// }

// 2.8) Implementando um programa de cupons
// import "dart:io";

// void main() {
//   print(
//     "Bem-vindo ao mercado No Precinho!\nDigite o valor total gasto em compras:",
//   );
//   double spentAmount = double.parse(stdin.readLineSync()!);

//   int earnedCoupons = spentAmount ~/ 50; //ou (spentAmount / 50).floor()

//   print("Parabéns! Você ganhou $earnedCoupons cupons!");
// }

// 3.1) Calculando idade para carteira de motorista
// import 'dart:io';

// void main() {
//   int idade = 0;
//   print("Digite sua idade:");
//   idade = int.parse(stdin.readLineSync()!);

//   if (idade >= 18) {
//     print("O usuário pode dirigir");
//   } else {
//     print("O usuário não tem permissão para dirigir no Brasil.");
//   }
// }

// 3.2) Retornando os meses do ano
// import 'dart:io';

// void main() {
//   int monthNumber = 0;
//   print("Digite um número de 1 a 12:");
//   monthNumber = int.parse(stdin.readLineSync()!);

//   switch (monthNumber) {
//     case 1:
//       print("Janeiro");
//       break;
//     case 2:
//       print("Fevereiro");
//       break;
//     case 3:
//       print("Março");
//       break;
//     case 4:
//       print("Abril");
//       break;
//     case 5:
//       print("Maio");
//       break;
//     case 6:
//       print("Junho");
//       break;
//     case 7:
//       print("Julho");
//       break;
//     case 8:
//       print("Agosto");
//       break;
//     case 9:
//       print("Setembro");
//       break;
//     case 10:
//       print("Outubro");
//       break;
//     case 11:
//       print("Novembro");
//       break;
//     case 12:
//       print("Dezembro");
//       break;
//     default:
//       print("Número inválido! Por favor, digite um número entre 1 e 12.");
//   }
// }

// 3.3) Implementando a verificação de saldo
// import 'dart:io';

// double saldo = 1000.0; // Saldo inicial em reais

// void main() {
//   print('Boas-vindas ao seu banco digital!');
//   print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

//   print('Digite o valor do Pix que deseja realizar:');
//   double valorPix = double.parse(stdin.readLineSync()!);

//   if (valorPix > saldo) {
//     print("Saldo insuficiente.");
//   } else {
//     saldo -= valorPix;
//     print('Pix realizado com sucesso!');
//     print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
//   }
// }

// 3.4) Verificando a maioridade em diferentes países
// import 'dart:io';

// void main() {
//   int idade = 0;
//   String pais = "";

//   print("Digite sua idade:");
//   idade = int.parse(stdin.readLineSync()!);

//   print("Digite o país (Brasil, EUA, Japão):");
//   pais = stdin.readLineSync()!;

//   switch (pais) {
//     case "Brasil":
//       if (idade >= 18) {
//         print("Você é maior de idade no Brasil.");
//       } else {
//         print("Você é menor de idade no Brasil.");
//       }
//       break;
//     case "EUA":
//       if (idade >= 16) {
//         print("Você é maior de idade nos EUA.");
//       } else {
//         print("Você é menor de idade nos EUA.");
//       }
//       break;
//     case "Japão":
//       if (idade >= 20) {
//         print("Você é maior de idade no Japão.");
//       } else {
//         print("Você é menor de idade no Japão.");
//       }
//       break;
//     default:
//       print("País não reconhecido. Por favor, insira Brasil, EUA ou Japão.");
//   }
// }

// 4.1) Validação de categorias de produtos em um sistema de estoque
// import 'dart:io';

// void main() {
//   String categoria = "";
//   List<String> categoriasValidas = [
//     "eletronicos",
//     "alimentos",
//     "vestuario",
//     "livros",
//   ];
//   print(
//     "Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):",
//   );
//   categoria = stdin.readLineSync()!;
//   if (categoriasValidas.contains(categoria.toLowerCase())) {
//     print("Categoria '$categoria' válida.");
//   } else {
//     print(
//       "Categoria inválida. As categorias válidas são: eletronicos, alimentos, vestuario, livros.",
//     );
//   }
// }

// 4.2) Validação de tipos de arquivos em um sistema de upload
// import 'dart:io';

// void main() {
//   String tipoArquivo = "";
//   List<String> tiposValidos = ["pdf", "docx", "jpg", "png"];

//   void getFileType() {
//     print("Digite o tipo de arquivo para upload (pdf, docx, jpg, png):");
//     tipoArquivo = stdin.readLineSync()!;
//     if (tiposValidos.contains(tipoArquivo.toLowerCase())) {
//       print("Tipo de arquivo '$tipoArquivo' válido.");
//     } else {
//       print(
//         "Tipo de arquivo inválido. Os tipos válidos são: pdf, docx, jpg, png.",
//       );
//       getFileType();
//     }
//   }

//   getFileType();
// }

// 4.3) Dando uma nova chance no retorno de mês
// import 'dart:io';

// void main() {
//   String? input = "";

//   void solicitarNumero() {
//     print("Digite um número de 1 a 12:");
//     input = stdin.readLineSync();
//     int? numero = int.tryParse(input!);
//     if (numero == null || numero < 1 || numero > 12) {
//       print("Número inválido. Por favor, insira um número de 1 a 12.");
//       solicitarNumero();
//     }
//   }

//   solicitarNumero();

//   // Null safety e conversão de entrada
//   int numero = int.parse(input!);

//   // Função que retorna o mês correspondente
//   String obterMes(int numero) {
//     switch (numero) {
//       case 1:
//         return 'Janeiro';
//       case 2:
//         return 'Fevereiro';
//       case 3:
//         return 'Março';
//       case 4:
//         return 'Abril';
//       case 5:
//         return 'Maio';
//       case 6:
//         return 'Junho';
//       case 7:
//         return 'Julho';
//       case 8:
//         return 'Agosto';
//       case 9:
//         return 'Setembro';
//       case 10:
//         return 'Outubro';
//       case 11:
//         return 'Novembro';
//       case 12:
//         return 'Dezembro';
//       default:
//         return 'Número inválido. Por favor, insira um número de 1 a 12.';
//     }
//   }

//   String mes = obterMes(numero);
//   print(mes);
// }
// 4.4) Criando a função de depósito e fazendo sua validação
/*import 'dart:io';

void main() {
  List<String> operacoesValidas = [
    "deposito",
    "retirada",
    "transferencia",
    "pagamento",
  ];
  String? operacao = "";

  void getOperacao() {
    print(
      "Digite uma operação (deposito, retirada, transferencia, pagamento):",
    );
    operacao = stdin.readLineSync();
    if (operacoesValidas.contains(operacao!.toLowerCase())) {
      print("Operação '$operacao' válida.");
    } else {
      print(
        "Operação inválida. As operações válidas são: deposito, retirada, transferencia, pagamento.",
      );
      getOperacao();
    }
  }

  getOperacao();
}*/

// 4.5) Validação de métodos de pagamento em uma plataforma de e-commerce
/*import 'dart:io';

void main() {
  List<String> metodosPagamentoValidos = <String>[
    'cartao',
    'boleto',
    'pix',
    'paypal',
  ];
  String? metodoPagamento = "";

  void getMetodoPagamento() {
    print("Digite um método de pagamento (cartao, boleto, pix, paypal):");
    metodoPagamento = stdin.readLineSync();
    if (metodosPagamentoValidos.contains(metodoPagamento!.toLowerCase())) {
      print("Método de pagamento '$metodoPagamento' válido.");
    } else {
      print(
        "Método de pagamento inválido. Os métodos válidos são: cartao, boleto, pix, paypal.",
      );
      getMetodoPagamento();
    }
  }

  getMetodoPagamento();
}*/

// 5.1) Imprimindo números no terminal
/*void main() {
  for (int i = 0; i < 5; i++) {
    print(i + 1);
  }
}*/

// 5.2) Mostrando nomes no terminal
/*void main() {
  List<String> nomes = <String>["Ana", "Rafael", "Marcelo"];
  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }
}*/

// 5.3) Em busca da parada
void main() {
  String frase = "Parou! Este código não continua.";

  for (String letra in frase.split('')) {
    if (letra == "!") {
      break;
    }
    print(letra);
  }
}
