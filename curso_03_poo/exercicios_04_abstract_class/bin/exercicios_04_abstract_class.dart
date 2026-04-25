// 6. Criando um programa informativo de espécies de seres vivos

// Este exercício será um pouco mais desafiador.

//     Crie um programa que mostra características sobre os seres vivos e implemente três classes, seguindo os requisitos de cada uma:
//     Classe SerVivo: será uma classe abstrata que terá um método void mostrarCaracteristicas();.
//     Planta: será uma classe que implementa SerVivo e terá os seguintes objetos e suas descrições de print:
//         Girassol: é uma planta, não tem os cinco sentidos, é uma flor;
//         Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore;
//     Animal: é vivo e tem os cinco sentidos:
//         Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos;
//         Gato: tem cinco sentidos, mia, é quadrúpede e vive em média 20 anos;
//         Cão: tem cinco sentidos, late, é quadrúpede e vive em média 20 anos.

// Represente essas coisas do mundo real com classe, classe abstrata, herança e polimorfismo de orientação a objetos.

// O resultado do print no terminal deverá se parecer com isto:

// Girassol: é uma planta, não tem os cinco sentidos, é uma flor.

// Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore.

// Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos.

// Gato: tem cinco sentidos, pensa e fala, é quadrúpede e vive em média 20 anos.

// Cão: tem cinco sentidos, pensa e fala, é quadrúpede e vive em média 20 anos.

import 'package:exercicios_04_abstract_class/agendamento.dart';
import 'package:exercicios_04_abstract_class/funcionario.dart';
import 'package:exercicios_04_abstract_class/servivo.dart';

abstract class Documento {
  String nomeDoDocumento;

  Documento(this.nomeDoDocumento);

  void imprimir() {
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}

class Relatorio extends Documento {
  Relatorio(super.nomeDoDocumento);
}

void main() {
  Documento relatorio = Relatorio('Relatório Anual');
  relatorio.imprimir();

  Funcionario joao = Analista("João");
  print('Salário de ${joao.nome}: ${joao.calcularSalario()}');

  Funcionario maria = Gerente("Maria");
  print('Salário de ${maria.nome}: ${maria.calcularSalario()}');

  Funcionario giovana = Diretor("Giovana");
  print('Salário de ${giovana.nome}: ${giovana.calcularSalario()}');

  SerVivo girassol = Planta('girassol', 'flor');
  girassol.mostrarCaracteristicas();

  SerVivo laranjeira = Planta('laranjeira', 'árvore frutífera');
  laranjeira.mostrarCaracteristicas();

  SerVivo humano = Animal('humano', 'bípede');
  humano.mostrarCaracteristicas();

  SerVivo gato = Animal('gato', 'quadrúpede');
  gato.mostrarCaracteristicas();

  SerVivo cao = Animal('cao', 'quadrúpede');
  cao.mostrarCaracteristicas();

  Agendamento medico = Medico();
  Agendamento dentista = Dentista();
  GerenciadorDeAgendamentos gerenciador = GerenciadorDeAgendamentos();
  gerenciador.adicionarProfissional(medico);
  gerenciador.adicionarProfissional(dentista);
  gerenciador.exibirDuracaEDisponibilidade();
}
