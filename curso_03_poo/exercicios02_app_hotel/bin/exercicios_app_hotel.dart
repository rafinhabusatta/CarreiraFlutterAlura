// Você está desenvolvendo um Aplicativo de reservas de hotel em que clientes reservam quartos e gerenciam suas estadias. O sistema deve permitir que os clientes façam reservas, cancelem reservas, e consultem o status de suas reservas. Durante a implementação inicial, surgiram algumas necessidades de melhoria, como garantir a privacidade dos dados e otimizar a organização do código.

// 1. Criando uma classe de cliente
//Escreva o código de uma classe que abstrai um cliente. As características (atributos) da classe são: nome do cliente e uma lista de quartos reservados. Apenas escreva a classe, sem mostrar nada no terminal com um print.

// 2. Realizando uma reserva de quarto
//Implemente uma função dentro da classe Cliente que permita ao cliente fazer uma reserva de quarto. Essa função deve adicionar o quarto reservado à lista de reservas do cliente e, em seguida, exibir a lista atualizada de reservas. Certifique-se de que a função está corretamente encapsulada dentro da classe. Também, faça a instância da classe com um objeto, por exemplo, o cliente Joaquim.

// 3. Cancelando uma reserva
// Implemente uma função dentro da classe Cliente que permita ao cliente cancelar uma reserva existente. A função deve remover o quarto da lista de reservas do cliente, desde que ele tenha uma reserva ativa para aquele quarto, e exibir a lista atualizada de reservas. Garanta que a função só permita o cancelamento se o cliente tiver realmente uma reserva para aquele quarto.

// 4. Protegendo os dados das reservas
//Altere o código da classe Cliente para que a lista de reservas seja uma propriedade privada, impedindo que ela seja alterada diretamente de fora da classe. Em vez disso, as operações de adicionar e cancelar reservas devem ser realizadas apenas por meio de métodos específicos dentro da classe. Verifique se a lista de reservas está protegida e testada corretamente.

import 'package:exercicios_app_hotel/cliente.dart';

void main() {
  Cliente joaquim = Cliente("Joaquim", [3, 4]);

  print(joaquim.nome);
  joaquim.getReservas();
  joaquim.reservaQuarto(4);
}
