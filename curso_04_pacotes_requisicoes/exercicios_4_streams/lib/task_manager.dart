import 'dart:async';

import 'task.dart';

// Exercício 2: Implementando um controlador de stream

// No TaskManager, crie um controlador de Stream que irá gerenciar as notificações das atualizações das tarefas. O controlador deve ser do tipo StreamController<String>, onde as strings representam mensagens de notificação que descrevem as mudanças nas tarefas.

// Exercício 4: Enviando atualizações para a stream

// Altere o status de uma tarefa e envie uma notificação através da Stream utilizando o método streamController.add. A notificação deve conter uma mensagem que indique qual tarefa foi atualizada e qual foi a mudança (por exemplo, "Tarefa 1 foi marcada como completa").

StreamController<String> streamController = StreamController<String>();

class TaskManager {
  Stream<String> get stream => streamController.stream;
  final List<Task> _listTasks = []; // Perceba que "Task" ainda não existe.

  addTask(Task task) {
    _listTasks.add(task);
    streamController.add('Nova tarefa ${task.title} adicionada.');
  }

  toggleTaskStatus(String id) {
    int index = _listTasks.indexWhere((task) => task.id == id);
    Task task = _listTasks[index];
    task.isCompleted = !task.isCompleted;
    _listTasks[index] = task;

    if (task.isCompleted) {
      streamController.add(' ${task.title} concluída.');
    } else {
      streamController.add('${task.title} não concluída.');
    }
  }

  List<Task> getAll() {
    streamController.add('Lista com todas as tarefas:');
    return _listTasks;
  }

  Task getById(String id) {
    streamController.add('Tarefa encontrada.');
    return _listTasks.firstWhere((task) => task.id == id);
  }

  delete(String id) {
    streamController.add('Tarefa removida.');
    _listTasks.removeWhere((task) => task.id == id);
  }
}
