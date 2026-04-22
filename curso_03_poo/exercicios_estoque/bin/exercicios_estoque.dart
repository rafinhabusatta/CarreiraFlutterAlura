// 1. Criando uma classe para itens de estoque
// Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos. Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações desses itens no terminal.

//O print no terminal deve ser algo parecido com isto:

//Produto: Smartphone, Quantidade em estoque: 100
//Produto: Notebook, Quantidade em estoque: 50

// 2. Implementando operações de entrada e saída de estoque
// Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque. Implemente métodos dentro da classe ItemEstoque para realizar essas operações. Teste esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook". Por último, imprima as novas quantidades em estoque no terminal.

// 3. Gerenciando múltiplos itens de estoque
// Você percebeu que a loja possui muitos produtos. Sua tarefa agora é fazer uma lista que armazena várias instâncias da classe ItemEstoque. Em seguida, implemente um laço de repetição que percorra essa lista e imprima as informações de cada item em estoque. Para testar, crie pelo menos três itens com diferentes produtos e quantidades, adicione-os à lista e exiba os detalhes de todos os itens cadastrados.

// 4. Atualizando o preço dos itens
// Agora que você já tem um controle de estoque, vamos acrescentar mais uma funcionalidade ao sistema: o controle de preços dos produtos. Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque. Em seguida, implemente um método que permita alterar o preço de um item específico. Crie três itens, defina seus preços iniciais e depois altere o preço de um deles. Por fim, imprima o nome do produto, sua quantidade em estoque e o preço atualizado.

void main() {
  ItemEstoque smartphone = ItemEstoque(
    nome: "Smartphone",
    quantidade: 100,
    preco: 3500,
  );
  ItemEstoque notebook = ItemEstoque(
    nome: "Notebook",
    quantidade: 50,
    preco: 5500,
  );
  ItemEstoque monitor = ItemEstoque(
    nome: "Monitor",
    quantidade: 75,
    preco: 1000,
  );

  List<ItemEstoque> itens = <ItemEstoque>[smartphone, notebook, monitor];

  for (ItemEstoque item in itens) {
    print(
      "Produto: ${item.nome}, Quantidade em estoque: ${item.quantidade}, preço: ${item.preco}",
    );
  }

  smartphone.entradaEstoque(smartphone, 20);
  notebook.saidaEstoque(notebook, 10);
  monitor.alteraPreco(monitor, 2000);
}

class ItemEstoque {
  String nome;
  int quantidade;
  double preco;

  ItemEstoque({
    required this.nome,
    required this.quantidade,
    required this.preco,
  });

  void entradaEstoque(ItemEstoque item, int quantidade) {
    item.quantidade += quantidade;
    print(
      "Registro de entrada: Nova quantidade do item ${item.nome}: ${item.quantidade}",
    );
  }

  void saidaEstoque(ItemEstoque item, int quantidade) {
    if (this.quantidade >= quantidade) {
      item.quantidade -= quantidade;
      print(
        "Registro de saída:Nova quantidade do item ${item.nome}: ${item.quantidade}",
      );
    } else {
      print("Quantidade insuficiente no estoque para sair");
    }
  }

  void alteraPreco(ItemEstoque item, double preco) {
    item.preco = preco;
    print(
      "Alteração de preço: Novo preço do item ${item.nome}: ${item.preco}:",
    );
  }
}
