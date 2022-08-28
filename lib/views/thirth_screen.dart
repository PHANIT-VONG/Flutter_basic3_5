import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirthScreen extends StatelessWidget {
  const ThirthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          color: Colors.blue,
          child: const Text('Close'),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
