abstract class Agendamento {
  void calculaDuracaoConsulta();
  void verificaDisponibilidade();
}

class Medico implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    print('A duração da consulta é de 30 minutos.');
  }

  @override
  void verificaDisponibilidade() {
    print(
      'O médico está disponível para consultas às segundas, quartas e sextas.',
    );
  }
}

class Dentista implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    print('A duração da consulta é de 45 minutos.');
  }

  @override
  void verificaDisponibilidade() {
    print('O dentista está disponível a cada 15 minutos.');
  }
}

class GerenciadorDeAgendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
      print('---');
    }
  }
}
