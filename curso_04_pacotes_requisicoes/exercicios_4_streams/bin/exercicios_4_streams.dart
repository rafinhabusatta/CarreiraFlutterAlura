// Exercício 3: Ouvindo as atualizações da stream

// Na função main, crie um ouvinte (StreamSubscription) para a Stream que você criou na atividade anterior. Esse ouvinte deve ser capaz de receber as mensagens de notificação e imprimi-las no console sempre que uma nova mensagem for enviada pela Stream.

// Exercício 5: Testar comportamento de notificações

// Com o TaskManager configurado para enviar uma notificação via Stream a cada alteração, use-o na main para testar se as notificações estão sendo realmente enviadas. Você deve:

//     Adicionar três tarefas;
//     Visualizá-las todas juntas;
//     Completar a primeira tarefa;
//     Visualizar a primeira tarefa;
//     Deletar a segunda tarefa;
//     E mais uma vez, visualizá-las todas juntas para notar a diferença.

import 'dart:async';

import 'package:exercicios_4_streams/task.dart';
import 'package:exercicios_4_streams/task_manager.dart';

void main() {
  TaskManager taskManager = TaskManager();
  StreamSubscription streamListener = taskManager.stream.listen((message) {
    print('Notificação: $message');
  });

  // Adiciona as tarefas
  taskManager.addTask(
    Task(
      id: '1',
      title: 'Estudar Flutter',
      description: 'Iniciar estudos flutter',
      isCompleted: false,
    ),
  );
  taskManager.addTask(
    Task(
      id: '2',
      title: 'Ir na academia',
      description: 'Treinar peito',
      isCompleted: false,
    ),
  );
  taskManager.addTask(
    Task(
      id: '3',
      title: 'Cinema',
      description: 'Dia D, BarraSul - 15:10',
      isCompleted: false,
    ),
  );

  List<Task> allTasks = taskManager.getAll();
  print('--- Tarefas ---');
  for (Task task in allTasks) {
    print(
      'ID: ${task.id}, Título: ${task.title}, Concluída: ${task.isCompleted}',
    );
  }

  // Marca a tarefa 1 como concluída
  taskManager.toggleTaskStatus('1');

  // Visualiza a tarefa por ID
  Task taskById = taskManager.getById('1');
  print('--- Tarefa Buscada por ID ---');
  print(
    'ID: ${taskById.id}, Título: ${taskById.title}, Concluída: ${taskById.isCompleted}',
  );

  // Remove uma tarefa
  taskManager.delete('2');

  // Visualiza todas as tarefas após remoção
  allTasks = taskManager.getAll();
  print('--- Tarefas Após Remoção ---');
  for (Task task in allTasks) {
    print(
      'ID: ${task.id}, Título: ${task.title}, Concluída: ${task.isCompleted}',
    );
  }
}
