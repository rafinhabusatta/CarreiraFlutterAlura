import 'dart:convert';
import 'package:http/http.dart';

void main() {
  //searchBooksByAuthor('José de Alencar');
  //List<String> ingredientes = ['4 ovos'];
  //searchRecipes(ingredientes);
  //teamOrganizer();
  vetSystem('Dra. Patrícia Gomes');
}

// Exercício 1: Buscando livros por autor em uma biblioteca digital

// Você está desenvolvendo um sistema de gerenciamento para uma biblioteca digital. Os dados dos livros são armazenados em um formato JSON que inclui título, pessoas autoras, ano de publicação, entre outros.

// Sua tarefa é criar uma função em Dart que busque todos os livros de uma determinada pessoa autora e exiba os títulos dos livros encontrados no console.

void searchBooksByAuthor(String author) async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json';

  Response response = await get(Uri.parse(url));
  print(json.decode(response.body).where((book) => book['author'] == author));
}

// Exercício 2: Filtrando receitas por ingredientes disponíveis

// Você trabalha em um aplicativo de receitas culinárias que ajuda os usuários a encontrar receitas baseadas nos ingredientes que têm em casa.

// As receitas são armazenadas em formato JSON e incluem uma lista de ingredientes.

// Sua tarefa é criar uma função em Dart que filtre as receitas que podem ser feitas com os ingredientes disponíveis que deverão ser fornecidas por uma lista de String no parâmetro na função, e exiba os nomes das receitas que podem ser preparadas com esses ingredientes.

void searchRecipes(List<String> ingredients) async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json';

  Response response = await get(Uri.parse(url));
  var recipes = jsonDecode(response.body);
  for (dynamic recipe in recipes) {
    if (ingredients.any(
      (ingredient) => recipe['ingredients'].contains(ingredient),
    )) {
      print(recipe['name']);
    }
  }
}

// Exercício 3: Organizando times de vôlei por nível de habilidade

// Você está criando um organizador de times para um campeonato de vôlei amador. As pessoas jogadoras são classificadas por nível de habilidade, e essa informação é armazenada em formato JSON.

// Sua tarefa é criar uma função em Dart que organize as pessoas jogadoras em times. Para isso, distribua as pessoas em times, de forma que a quantidade de pessoas por time seja compatível com o que está definido em “rules” e que as pessoas que estão a mais rodadas esperando tenham prioridade na alocação. Por fim, exiba a composição dos times no console.

void teamOrganizer() async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json';

  Response response = await get(Uri.parse(url));
  dynamic data = jsonDecode(response.body);

  List<dynamic> players = data['players'];
  int peoplePerTeam = data['rules']['playersPerTeam'];

  players.sort(
    (a, b) => (b['roundsWaiting'] as int) - (a['roundsWaiting'] as int),
  );
  List<List<Map<String, dynamic>>> teams = [];

  int team = 0;
  int people = 0;
  teams.add([]);
  /*for (final player in players.cast<Map<String, dynamic>>()) {
    if (people >= peoplePerTeam) {
      team++;
      teams.add([]);
      people = 0;
    }
    teams[team].add(player);
    people++;
  }*/
  for (var i = 0; i < players.length; i++) {
    if (i % peoplePerTeam == 0) teams.add([]);
    teams.last.add(players[i] as Map<String, dynamic>);
  }

  for (var t = 0; t < teams.length; t++) {
    print('Time ${t + 1}:');
    for (var p in teams[t]) {
      print('- ${p['name']} (roundsWaiting: ${p['roundsWaiting']})');
    }
  }
}

// Exercício 4: Agendando consultas para uma clínica veterinária

//Você está desenvolvendo um sistema de agendamento para uma clínica veterinária. As consultas são armazenadas em formato JSON, incluindo o nome do animal, o horário da consulta e o nome do veterinário responsável.

//Sua tarefa é criar uma função em Dart que filtre as consultas de um determinado veterinário e as organize por ordem de dia e horário e mostre na tela.

void vetSystem(String veterinarian) async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json';

  Response response = await get(Uri.parse(url));
  var appointments = jsonDecode(response.body);

  var vetAppointments = appointments
      .where((appointment) => appointment['veterinarian'] == veterinarian)
      .toList();

  vetAppointments.sort(
    (appA, appB) => DateTime.parse(
      appA['appointment'],
    ).compareTo(DateTime.parse(appB['appointment'])),
  );

  print(vetAppointments);
}
