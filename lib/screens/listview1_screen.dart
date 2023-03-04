import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['megaman', 'Metal', 'Snakes', 'Thor'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipe 1'),
        ),
        body: ListView(
          children: <Widget>[
            ...options.map((game) => ListTile(
                trailing: const Icon(Icons.arrow_right_alt), title: Text(game)))
          ],
        ));
  }
}
