// Código da aula prática

/*void enviarEmail(String email) {
  print('mensagem enviada para: $email');
}*/

/*void main() { 
  /*List<String> listaEmails = ['joao@gmail.com','maria@gmail.com'];
  
  listaEmails.add('enzo@gmail.com');
  
  if (!listaEmails.contains('enzo@gmail.com')) {
    listaEmails.add('enzo@gmail.com');
  }
  
    for (String email in listaEmails) {
      enviarEmail(email);
    }
  
    //listaEmails.forEach((email) => enviarEmail(email));*/
  
  /*Set<String> setEmails = {'joao@gmail.com','maria@gmail.com'};
  setEmails.add('enzo@gmail.com');
  setEmails.add('enzo@gmail.com');
  
  for (String email in setEmails) {
    print(email);
  }
  
  if (setEmails.contains('enzod@gmail.com')) {
    print('email do Enzo no set');
  }
  else {
    print('não está no set');
  }*/
  
  /*Map<String, String> mapEmails = {'João': 'joao@gmail.com', 'Maria': 'maria@gmail.com'};
  
  mapEmails['Enzo'] = 'enzo@gmail.com';
  
  print(mapEmails.values);
  
  for (final entry in mapEmails.entries) {
    print('${entry.key}, ${entry.value}');
  }
  
  for (String email in mapEmails.values) {
      enviarEmail(email);
    }*/

}*/

// Exercícios

// 1. A Dev Kanban está desenvolvendo um aplicativo de produtividade onde as pessoas usuárias podem verificar suas tarefas. Crie uma função que receba a lista de tarefas e exiba todas as tarefas.

/*void main() {
  List<String> tarefas = ["Estudar", "Comprar mantimentos", "trablhar"];
  listarTarefas(tarefas);
}

void listarTarefas(List<String> tarefas) {
  for (String tarefa in tarefas) {
    print(tarefa);
  }
}*/

// 2. Em um sistema administrativo, cada funcionário é representado por um ID (identificador único) em forma de inteiro. Crie uma função que receba a lista de IDs dos funcionários e exiba apenas os IDs que são pares.

/*void main() {
  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  listaPares(idsFuncionarios);
}

void listaPares(List<int> ids) {
  for (int id in ids) {
    if (id % 2 == 0) {
      print(id);
    }
  }
}*/

// 3. Uma empresa está gerenciando o inventário de seus produtos e precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. Para isso, você deve criar uma função que, dado uma lista de produtos, conte quantas vezes o item "maçã" aparece na lista de produtos.

/*void main() {
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];
  int macas = contaMacas(produtos);
  print("Quantidade de maçãs: $macas");
}

int contaMacas(List<String> produtos) {
  int quantMacas = 0;
  for (String produto in produtos) {
    if (produto == 'maçã') {
      quantMacas++;
    }
  }
  return quantMacas;
}*/

// 4. João trabalha em uma plataforma de e-commerce e está implementando uma funcionalidade de recomendação de produtos. Ele possui uma lista de produtos que a pessoa usuária visitou e quer verificar se algum item visitado já foi adicionado ao carrinho.

/*void main() {
  List<String> produtosCarrinho = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];

  List<String> produtosVisitados = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];

  List<String> prodNaoAdic = verificacaoCarrinho(
    produtosCarrinho,
    produtosVisitados,
  );
  print("Produtos visitados não adicionados ao carrinho: $prodNaoAdic");
}

List<String> verificacaoCarrinho(
  List<String> produtosCarrinho,
  List<String> produtosVisitados,
) {
  List<String> produtosNaoAdicionados = [];
  for (String produto in produtosVisitados) {
    if (!produtosCarrinho.contains(produto)) {
      produtosNaoAdicionados.add(produto);
    }
  }
  return produtosNaoAdicionados;
}*/

// 5. Em um sistema de reservas, é necessário verificar se um determinado item está disponível em um conjunto de itens disponíveis.

/*void main() {
  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};
  verificacaoCod(codigosDisponiveis, 6);
}

void verificacaoCod(Set<int> codigosDisponiveis, int cod) {
  if (codigosDisponiveis.contains(cod)) {
    print("Item disponível");
  } else {
    print("Item indisponível");
  }
}*/

// 6. Uma loja tem dois sets de promoções. Um contém os identificadores (ID) dos produtos da promoção da semana, enquanto o outro contém os identificadores dos produtos da promoção de fim de mês.
/*void main() {
  Set<int> produtosSemana = {1, 2, 3, 4};
  Set<int> produtosMes = {3, 4, 5, 6};
  promocoes(produtosSemana, produtosMes);
}

void promocoes(Set<int> produtosSemana, Set<int> produtosMes) {
  for (int prodSemana in produtosSemana) {
    if (produtosMes.contains(prodSemana)) {
      print(prodSemana);
    }
  }
}*/

// 7. Em uma análise de vendas, dois conjuntos de produtos estão sendo comparados: um conjunto de produtos vendidos e outro de produtos que estavam em estoque.

/*void main() {
  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};

  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"};

  comparaEstoque(produtosVendidos, produtosEstoque);
}

void comparaEstoque(Set<String> produtosVendidos, Set<String> produtosEstoque) {
  for (String prodEstoque in produtosEstoque) {
    if (!produtosVendidos.contains(prodEstoque)) {
      print(prodEstoque);
    }
  }
}*/

// 8. Em um sistema de vendas, a loja precisa calcular o valor total dos produtos. Crie uma função que receba um mapa de produtos e calcule o valor total dos produtos.
/*void main() {
  Map<String, double> precosProdutos = {
    "Camiseta": 30.0,

    "Calça": 50.0,

    "Boné": 15.0,

    "Tênis": 120.0,
  };

  double precoTotal = valorProdutos(precosProdutos);

  print(precoTotal);
}

double valorProdutos(Map<String, double> precos) {
  double total = 0;
  for (double preco in precos.values) {
    total += preco;
  }

  return total;
}*/

// 9. Em um sistema de inventário, é necessário realizar ajustes de preço de determinados produtos. Crie uma função que receba um mapa de produtos, um nome de produto e um novo preço, atualizando o valor e exibindo o inventário atualizado.
/*void main() {
  Map<String, double> inventarioProdutos = {
    "Camiseta": 30.0,

    "Calça": 50.0,

    "Boné": 15.0,
  };

  ajustaPreco(inventarioProdutos, 'Calça', 55);

  print(inventarioProdutos);
}

void ajustaPreco(Map<String, double> inventario, String produto, double preco) {
  if (inventario.containsKey(produto)) {
    inventario[produto] = preco;
  } else {
    print("Produto não encontrado.");
  }
}*/

// 10. Uma empresa está desenvolvendo um sistema de CRM. O sistema armazena os clientes e suas respectivas pontuações de fidelidade. Agora, cada cliente é representado por um mapa contendo o nome e a pontuação. Você deve criar uma função que percorra a lista de clientes e exiba os nomes dos clientes com pontuação superior a 7.

void main() {
  // Lista de mapas, onde cada mapa contém o nome e a pontuação de um cliente.

  List<Map<String, dynamic>> clientes = [
    {"nome": "João", "pontuacao": 6.5},

    {"nome": "Maria", "pontuacao": 8.7},

    {"nome": "Pedro", "pontuacao": 9.2},

    {"nome": "Ana", "pontuacao": 5.4},
  ];
  clientesPremium(clientes);
}

void clientesPremium(List<Map<String, dynamic>> clientes) {
  for (Map<String, dynamic> cliente in clientes) {
    if (cliente['pontuacao'] > 7) {
      print(cliente['nome']);
    }
  }
}
