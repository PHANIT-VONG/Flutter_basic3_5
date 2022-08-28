import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3_5/views/second_screen.dart';
import 'package:flutter3_5/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Home Screen',
          color: Colors.white,
          size: 20,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 300.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/flower1.jpeg'),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/flower2.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // MaterialButton(
          //   onPressed: () {},
          //   color: Colors.red,
          //   child: const Text('Button'),
          // ),
          const SizedBox(height: 20),
          CupertinoButton(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
            child: const Text('Next Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SecondScreen();
                }),
              );
            },
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text('Text Button'),
          // ),
          // OutlinedButton(
          //   onPressed: () {},
          //   child: const Text('Outlined Button'),
          // ),
          // FloatingActionButton.extended(
          //   onPressed: () {},
          //   label: const Text('Floating Button'),
          // ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.add),
          // ),
          // ElevatedButton.icon(
          //   onPressed: () {
          //     debugPrint('Pressed');
          //   },
          //   icon: const Icon(Icons.search),
          //   label: const Text('Search'),
          // ),
        ],
      ),
    );
  }
}
