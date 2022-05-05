import 'package:coffee_list_dio/service/coffee_api_client.dart';

// APIを取得するためのメソッドをrepositoryから呼び出す
// メソッドを切り分けることで、分かりやすくなる

class Repository {
  final api = CoffeeApiClient();
  dynamic fetchList() async {
    return await api.fetchList();
  }
}
