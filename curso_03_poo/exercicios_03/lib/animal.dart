// 1. Criando classes de gatos e cachorros

// Crie uma classe Animal com um método emitirSom(). Em seguida, crie duas outras classes: Cachorro e Gato, que herdam o método da classe Animal. Ao adicionar o método emitirSom() nas classes Cachorro e Gato, utilize a anotação @override para indicar que estão sobrescrevendo o método — o método emitirSom deve fazer um print “O cachorro late” para Cachorro e “o gato miou” para Gato.

// Além disso, adicione métodos específicos para cada classe, como abanarRabo() para o Cachorro e arranharMoveis() para o Gato.

// O print no terminal deve ser semelhante a isto:

// O cachorro late.
// O cachorro está abanando o rabo.
// O gato miou.
// O gato está arranhando os móveis.

abstract class Animal {
  void emitirSom();
}

class Cachorro implements Animal {
  @override
  void emitirSom() {
    print("O cachorro late.");
  }

  void abanarRabo() {
    print("O cachorro está abanando o rabo.");
  }
}

class Gato implements Animal {
  @override
  void emitirSom() {
    print("O gato miou.");
  }

  void arranharMoveis() {
    print("O gato está arranhando os móveis.");
  }
}
