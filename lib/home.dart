import 'package:flutter/material.dart';
import 'package:reusable_component/component/ButtonRounded.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ButtonRounded(
          title: 'Save',
          icon: const Icon(Icons.save),
          onPressed: () {
            print('Button Clicked');
          },
        ),
      ),
    );
  }
}
