import 'package:coffee_list_dio/model/coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_list_dio/view_model/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(listProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee List'),
      ),
      body: Center(
        child: asyncValue.when(
          data: (data) {
            return data.isNotEmpty
                ? ListView(
                    children: data
                        .map(
                          (Coffee coffee) => Card(
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return SimpleDialog(
                                      title: Text(coffee.title!),
                                      children: [
                                        SimpleDialogOption(
                                          child: Text(coffee.title!),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: ListTile(
                                title: Text(coffee.title!),
                                subtitle: Text(coffee.description!),
                                trailing: const Icon(Icons.more_vert),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                : const Text('Data is empty.');
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, _) => Text(error.toString()),
        ),
      ),
    );
  }
}
