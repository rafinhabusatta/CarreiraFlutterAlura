// Você está desenvolvendo um programa de gerenciamento de receitas culinárias chamado Mão na Massa. Nesse programa, deseja acessar uma base de dados online que contém uma lista de receitas e apresentá-la para as pessoas usuárias.

// A base de dados estará disponível via uma API pública no formato JSON, hospedada em um GIST do GitHub. Para acessar esses dados, você precisará realizar uma requisição HTTP utilizando o pacote http no Dart.

import 'package:http/http.dart';

void main() {
  fetchRecipes();
}

void fetchRecipes() async {
  String url =
      'https://gist.githubusercontent.com/rafinhabusatta/52284fe182a5c4378268c79ad2381a9c/raw/f773ec39719b0e7a1fe2ed48bd92263aac8551b4/recipes.json';

  Uri uri = Uri.parse(url);

  Future<Response> response = get(uri);
  Response value = await response;
  print(value.body);
}
