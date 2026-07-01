import 'dart:async';
import 'package:dart_assincronismo/api_key.dart';
import 'package:dart_assincronismo/models/account.dart';
import 'package:http/http.dart';
import 'dart:convert';

class AccountService {
  StreamController<String> _streamController = StreamController<String>();
  Stream<String> get streamInfos => _streamController.stream;
  String url = 'https://api.github.com/gists/39c880e993263c1373694ec95135ca40';

  Future<List<Account>> getAll() async {
    Response response = await get(Uri.parse(url));
    _streamController.add("${DateTime.now()} | Requisição assíncrona enviada");

    Map<String, dynamic> mapResponse = json.decode(response.body);

    List<dynamic> listDynamic = json.decode(
      mapResponse["files"]["accounts.json"]["content"],
    );

    List<Account> listAccounts = [];

    for (dynamic dyn in listDynamic) {
      Map<String, dynamic> mapAccount = dyn as Map<String, dynamic>;
      Account account = Account.fromMap(mapAccount);
      listAccounts.add(account);
    }

    return listAccounts;
  }

  Future<Account> getAccountById(int id) async {
    List<Account> listAccounts = await getAll();

    for (Account account in listAccounts) {
      if (int.parse(account.id) == id) {
        return account;
      }
    }
    throw StateError('Conta com id $id não encontrada');
  }

  Future<void> addAccount(Account account) async {
    List<Account> listAccounts = await getAll();
    listAccounts.add(account);

    List<Map<String, dynamic>> listContent = [];
    for (Account account in listAccounts) {
      listContent.add(account.toMap());
    }

    String content = json.encode(listAccounts);

    Response response = await post(
      Uri.parse(url),
      headers: {'Authorization': 'Bearer $githubApiKey'},
      body: json.encode({
        'description': 'accounts',
        'public': true,
        'files': {
          'accounts.json': {'content': content},
        },
      }),
    );

    if (response.statusCode.toString()[0] == '2') {
      _streamController.add(
        "${DateTime.now()} | requisição de adição bem sucedida ${account.name}",
      );
    } else {
      _streamController.add(
        "${DateTime.now()} | requisição de adição falhou ${account.name}",
      );
    }
  }

  Future<void> updateAccount(Account account) async {
    List<Account> listAccount = await getAll();

    for (Account acc in listAccount) {
      if (acc.id == account.id) {
        acc.name = account.name;
        acc.lastName = account.lastName;
        acc.balance = account.balance;

        print('Conta atualizada com sucesso!');
      }
    }
  }

  Future<void> deleteAccount(int id) async {
    Account account = await getAccountById(id);

    List<Account> listAccounts = await getAll();
    listAccounts.remove(account);

    print('Conta removida com sucesso!');
  }
}
