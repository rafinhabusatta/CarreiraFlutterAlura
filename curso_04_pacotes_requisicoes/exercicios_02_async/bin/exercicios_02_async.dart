import 'dart:convert';
import 'package:http/http.dart';

void main() {
  searchBooksByAuthor('José de Alencar');
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

// Exercício 3: Organizando times de vôlei por nível de habilidade

// Você está criando um organizador de times para um campeonato de vôlei amador. As pessoas jogadoras são classificados por nível de habilidade, e essa informação é armazenada em formato JSON.

// Sua tarefa é criar uma função em Dart que organize as pessoas jogadoras em times. Para isso, distribua as pessoas em times, de forma que a quantidade de pessoas por time seja compatível com o que está definido em “rules” e que as pessoas que estão a mais rodadas esperando tenham prioridade na alocação. Por fim, exiba a composição dos times no console.
