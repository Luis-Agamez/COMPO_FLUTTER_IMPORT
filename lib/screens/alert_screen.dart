import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndorid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              title: const Text('Alert'),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text('This is the Alert Messagge'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ]),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'))
              ],
            ));
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Alert'),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text('This is the Alert Messagge'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ]),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar',
                        style: TextStyle(color: Colors.pink))),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Ok',
                        style: TextStyle(color: Colors.indigo)))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid
              ? displayDialogAndorid(context)
              : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Alert', style: TextStyle(fontSize: 20)),
          ),
          //     style: ElevatedButton.styleFrom(
          //   primary: Colors.pink,
          //   shape: const StadiumBorder(),
          //   elevation: 2
          // )
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
