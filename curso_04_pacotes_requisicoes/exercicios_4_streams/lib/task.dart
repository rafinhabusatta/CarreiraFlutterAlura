// Exercício 1: Criando o modelo de tarefa

// Desenvolva um modelo para representar uma tarefa no gerenciador. O modelo deve ter os seguintes atributos: id (String), title (String), description (String), e isCompleted (bool). Crie também métodos para converter uma instância desse modelo em um mapa (toMap) e para criar uma instância a partir de um mapa (fromMap).

class Task {
  String id;
  String title;
  String description;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted'],
    );
  }

  Map<String, dynamic> toMap(String task) {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'isCompleted:': isCompleted,
    };
  }
}
