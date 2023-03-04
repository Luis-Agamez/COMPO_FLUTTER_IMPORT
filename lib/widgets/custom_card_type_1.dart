import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Title'),
          subtitle: Text(
              'This is one subtitle for the application with flutter,This is one subtitle for the application with flutter'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('CANCEL'),
              ),
              TextButton(onPressed: () {}, child: const Text('OK'))
            ],
          ),
        )
      ]),
    );
  }
}
