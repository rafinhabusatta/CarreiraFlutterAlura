class Cliente {
  String nome;
  final List<int> _quartosReservados;

  Cliente(this.nome, this._quartosReservados);

  void reservaQuarto(int quarto) {
    if (_quartosReservados.contains(quarto)) {
      print(
        "Você já reservou este quarto anteriormente e a reserve segue ativa.",
      );
    } else {
      _quartosReservados.add(quarto);
      print("Reserva realizada com sucesso! Lista atualizada de reservas: ");
      getReservas();
    }
  }

  void cancelaReserva(int quarto) {
    if (_quartosReservados.contains(quarto)) {
      _quartosReservados.remove(quarto);
      print("Reserva cancelada. Lista atualizada de reservas: ");
      getReservas();
    }
  }

  void getReservas() {
    if (_quartosReservados.isNotEmpty) {
      for (int quarto in _quartosReservados) {
        print(quarto);
      }
    } else {
      print("Sem reservas ativas no momento.");
    }
  }
}
