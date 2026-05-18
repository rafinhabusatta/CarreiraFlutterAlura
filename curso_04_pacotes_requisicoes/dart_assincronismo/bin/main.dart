import 'package:http/http.dart';
import 'dart:convert';

void main() {
  print('Hello, World!');
  requestDataAsync();
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

void requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/rafinhabusatta/39c880e993263c1373694ec95135ca40/raw/f12546dc34fee3d9390736d7e1a4bc995cb2d6bd/accounts.json';
  Response response = await get(Uri.parse(url));
  print(json.decode(response.body)[0]);
}
