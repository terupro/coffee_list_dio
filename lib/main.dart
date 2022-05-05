import 'package:coffee_list_dio/model/coffee.dart';
import 'package:coffee_list_dio/view/home_page.dart';
import 'package:coffee_list_dio/view_model/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Coffee List',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
