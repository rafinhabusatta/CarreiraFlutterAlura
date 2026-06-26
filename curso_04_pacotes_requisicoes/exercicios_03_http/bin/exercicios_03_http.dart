import 'dart:convert';
import 'package:exercicios_03_http/api_key.dart';
import 'package:http/http.dart';

void main() {
  String responseBody = '''
  [
    {"id": 1, "name": "Celular", "price": 1200.75},
    {"id": 2, "name": "Notebook", "price": 3500.10},
    {"id": 3, "name": "Tablet", "price": 1500.00}
  ]
  ''';

  //var newProduct = {"id": 4, "name": "Monitor", "price": 800.00};
  //sendProduct(newProduct);

  var newProducts = [
    {"id": 5, "name": "Teclado", "price": 200.00},
    {"id": 6, "name": "Mouse", "price": 100.00},
  ];
  sendMultipleProducts(newProducts, "Periféricos");
}

// Exercício 1: Adicionando um novo produto ao catálogo

// Crie uma função que adicione um novo produto ao catálogo existente representado por uma lista JSON. O produto deve conter as chaves id, name, e price.

String addProduct(Map<String, dynamic> product, String responseBody) {
  List<Map<String, dynamic>> productList = json.decode(responseBody);
  productList.add(product);
  String updatedList = json.encode(productList);

  return updatedList;
}

Future<List<dynamic>> requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/rafinhabusatta/8aa4750acea63d2f93ac963d4f2f5386/raw/9cfb95c132df2c7064f4e4c53c568c84003a7911/product.json';
  Response response = await get(Uri.parse(url));
  return json.decode(response.body);
}

// Exercício 2: Enviando dados de um novo produto para a API

// Crie uma função que envie dados de um novo produto para a API da loja usando o método POST. Os dados a serem enviados devem incluir um produto com as chaves id, name, e price.
void sendProduct(Map<String, dynamic> product) async {
  List<dynamic> productList = await requestDataAsync();

  productList.add(product);

  String content = json.encode(productList);
  String url = 'https://api.github.com/gists/8aa4750acea63d2f93ac963d4f2f5386';
  Response response = await post(
    Uri.parse(url),
    headers: {'Authorization': 'Bearer $githubApiKey'},
    body: json.encode({
      'description': 'product.json',
      'public': true,
      'files': {
        'product.json': {'content': content},
      },
    }),
  );

  if (response.statusCode.toString()[0] == '2') {
    print('produto adicionado!');
  } else {
    print('requisição de adição falhou');
  }
}

// Exercício 3: Enviando múltiplos produtos em uma requisição

// Crie uma função que envie múltiplos produtos em uma única requisição para a API da loja. Os dados devem ser enviados no formato JSON e incluir uma lista de produtos. Essa função também deve solicitar o nome da lista, que deve ser usado para criar a descrição e o nome do arquivo no Gist.

void sendMultipleProducts(
  List<Map<String, dynamic>> products,
  String nameList,
) async {
  List<dynamic> productList = await requestDataAsync();

  for (Map<String, dynamic> product in products) {
    productList.add(product);
  }

  String content = json.encode(productList);
  String url = 'https://api.github.com/gists/8aa4750acea63d2f93ac963d4f2f5386';
  Response response = await post(
    Uri.parse(url),
    headers: {'Authorization': 'Bearer $githubApiKey'},
    body: json.encode({
      'description': nameList,
      'public': true,
      'files': {
        'product.json': {'content': content},
      },
    }),
  );

  if (response.statusCode.toString()[0] == '2') {
    print('produtos adicionados!');
  } else {
    print('requisição de adição falhou');
  }
}
