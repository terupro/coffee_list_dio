import 'package:coffee_list_dio/model/coffee.dart';
import 'package:dio/dio.dart';

class CoffeeApiClient {
  Future<List<Coffee>?> fetchList() async {
    final dio = Dio();
    const url = 'https://api.sampleapis.com/coffee/hot';
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      try {
        final datas = response.data as List<dynamic>;
        final list = datas.map((e) => Coffee.fromJson(e)).toList();
        return list;
      } catch (e) {
        throw e;
      }
    }
  }
}
