import 'package:coffee_list_dio/services/coffee_api_client.dart';

class Repository {
  final api = CoffeeApiClient();
  dynamic fetchList() async {
    return await api.fetchList();
  }
}
