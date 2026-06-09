import 'package:dart_assincronismo/api_key.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() {
  print('Hello, World!');
  //requestDataAsync();
  sendDataAsync({
    'ID': 'ID0054534',
    'name': 'Enzo',
    'lastName': 'Flutter',
    'balance': 400,
  });
}

void requestData() {
  String url =
      'https://gist.githubusercontent.com/rafinhabusatta/39c880e993263c1373694ec95135ca40/raw/f12546dc34fee3d9390736d7e1a4bc995cb2d6bd/accounts.json';
  Future<Response> response = get(Uri.parse(url));
  response.then((Response res) {
    print(res.body);
    List<dynamic> listAcounts = json.decode(res.body);
    Map<String, dynamic> mapCarla = listAcounts.firstWhere(
      (account) => account['name'] == 'Carla',
    );
    print(mapCarla);
    print(mapCarla['balance']);
  });
}

Future<List<dynamic>> requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/rafinhabusatta/39c880e993263c1373694ec95135ca40/raw/f12546dc34fee3d9390736d7e1a4bc995cb2d6bd/accounts.json';
  Response response = await get(Uri.parse(url));
  return json.decode(response.body);
}

Future<void> sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataAsync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);

  String url = 'https://api.github.com/gists/39c880e993263c1373694ec95135ca40';

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
  print(response.statusCode);
}
