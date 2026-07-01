import 'dart:io';

import 'package:dart_assincronismo/models/account.dart';
import 'package:dart_assincronismo/services/account_service.dart';

class AccountScreen {
  final AccountService _accountService = AccountService();

  void initializeStream() {
    _accountService.streamInfos.listen((event) {
      print(event);
    });
  }

  void runChatBot() {
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
              _getAllAccounts();
              break;
            }
          case '2':
            {
              _addExampleAccount();
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

  Future<void> _getAllAccounts() async {
    List<Account> listAccounts = await _accountService.getAll();
    print(listAccounts);
  }

  Future<void> _addExampleAccount() async {
    Account example = Account(
      id: "ID555",
      name: "Haley",
      lastName: "Chirívia",
      balance: 8001,
    );

    await _accountService.addAccount(example);
  }
}
