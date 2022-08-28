import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3_5/views/thirth_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seconde Screen'),
      ),
      body: Center(
        child: CupertinoButton(
          color: Colors.blue,
          child: const Text('Next Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const ThirthScreen();
              }),
            );
          },
        ),
      ),
    );
  }
}
