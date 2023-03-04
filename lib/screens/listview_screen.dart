import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const ['megaman', 'Metal', 'Snakes', 'Thor'];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipe 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          trailing: const Icon(Icons.arrow_right_alt, color: Colors.pink),
          title: Text(options[i]),
          onTap: () {
            final game = options[i];
            // print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
