import 'package:coffee_list_dio/models/coffee.dart';
import 'package:coffee_list_dio/view/home_page.dart';
import 'package:coffee_list_dio/view_models/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(listProvider);
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData.dark(), home: const HomePage());
  }
}
