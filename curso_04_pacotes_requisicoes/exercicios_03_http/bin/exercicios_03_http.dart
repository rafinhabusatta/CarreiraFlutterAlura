import 'dart:convert';

void main() {
  String responseBody = '''
  [
    {"id": 1, "name": "Celular", "price": 1200.75},
    {"id": 2, "name": "Notebook", "price": 3500.10},
    {"id": 3, "name": "Tablet", "price": 1500.00}
  ]
  ''';
}

// Exercício 1: Adicionando um novo produto ao catálogo

// Crie uma função que adicione um novo produto ao catálogo existente representado por uma lista JSON. O produto deve conter as chaves id, name, e price.

String addProduct(Map<String, dynamic> product, String responseBody) {
  List<Map<String, dynamic>> productList = json.decode(responseBody);
  productList.add(product);
  String updatedList = json.encode(productList);

  return updatedList;
}

// Exercício 2: Enviando dados de um novo produto para a API

// Crie uma função que envie dados de um novo produto para a API da loja usando o método POST. Os dados a serem enviados devem incluir um produto com as chaves id, name, e price.
void sendProductDataAsync(Map<String, dynamic> product) async {
  Response response = await post();
}
