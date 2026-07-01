import 'dart:io';

import 'package:dart_assincronismo/models/account.dart';
import 'package:dart_assincronismo/services/account_service.dart';
import 'package:uuid/uuid.dart';

class AccountScreen {
  final AccountService _accountService = AccountService();

  void initializeStream() {
    _accountService.streamInfos.listen((event) {
      print(event);
    });
  }

  void runChatBot() async {
    print("🦉Olá! Sou o Horácio, seu assistente no banco da Vida.");
    print("🐄Fico feliz em tê-lo conosco hoje.");

    bool isRunning = true;

    while (isRunning) {
      print("Como posso te ajudar?");
      print("1 - 🐮Ver todas as contas");
      print("2 - 🐯Adicionar nova conta.");
      print("3 🤡Sair");

      String? input = stdin.readLineSync();

      if (input != null) {
        switch (input) {
          case '1':
            {
              await _getAllAccounts();
              break;
            }
          case '2':
            {
              print("Digite o nome da pessoa: ");
              String? name = stdin.readLineSync();

              while (name == null) {
                print("Digite um nome válido: ");
                name = stdin.readLineSync();
              }
              print("\nDigite o sobrenome: ");
              String? lastName = stdin.readLineSync();

              while (lastName == null) {
                print("Digite um sobrenome válido: ");
                lastName = stdin.readLineSync();
              }
              print("\nDigite o saldo: ");
              String? balance = stdin.readLineSync();

              while (balance == null) {
                print("Digite um saldo válido: ");
                balance = stdin.readLineSync();
              }

              await _addExampleAccount(name, lastName, double.parse(balance));
              break;
            }
          case '3':
            {
              isRunning = false;
              print("🦉Até mais!");
              break;
            }
          default:
            {
              print("🤡Desculpe, não entendi. Tente novamente.");
            }
        }
      }
    }
  }

  _getAllAccounts() async {
    try {
      List<Account> listAccounts = await _accountService.getAll();
      print(listAccounts);
    } on Exception {
      print("Não foi possível recuperar os dados das contas.");
      print("Por favor, tente novamente mais tarde.");
    }
  }

  _addExampleAccount(String name, String lastName, double balance) async {
    var uuid = Uuid();
    Account example = Account(
      id: uuid.v1(),
      name: name,
      lastName: lastName,
      balance: balance,
    );

    await _accountService.addAccount(example);
  }
}
