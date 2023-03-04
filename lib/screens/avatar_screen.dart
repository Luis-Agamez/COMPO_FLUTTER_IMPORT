import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iron Man'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: CircleAvatar(
              child: const Text('IM'), backgroundColor: Colors.pink[900]),
        )
      ]),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 100,
        backgroundImage:
            NetworkImage('https://i.blogs.es/7ccbec/iron-man/1366_2000.jpg'),
      )),
    );
  }
}
