import 'package:coffee_list_dio/model/coffee.dart';
import 'package:coffee_list_dio/repository/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Repository(APIの取得)の状態を管理する
final repositoryProvider = Provider((ref) => Repository());

// 上記を非同期で管理する
final listProvider = FutureProvider<List<Coffee>>((ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.fetchList();
});
