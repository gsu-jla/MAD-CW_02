import 'package:flutter/material.dart';

// importing the HomeScreen page to allow for a call for a switch in scenes
import 'main.dart';

// this is the details dart file

void main() {
  runApp(const Details());
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recipe Details',
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
