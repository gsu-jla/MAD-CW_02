import 'package:flutter/material.dart';

// importing the HomeScreen page to allow for a call for a switch in scenes
import 'main.dart';

// this is the details dart file

void main() {
  runApp(const HomeScreen());
}

class DetailsHome extends StatelessWidget {
  const DetailsHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Details Page',
      theme: ThemeData(
        // This is the theme of the application
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InitDetail(title: 'Recipe Details'),
    );
  }
}

class InitDetail extends StatefulWidget {
  const InitDetail({super.key, required this.title});

  final String title;

  @override
  State<InitDetail> createState() => _Details();
}

class _Details extends State<InitDetail> {
  void _toHome() {
    setState(() {
      runApp(HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        // back navigation in app bar
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back to Recipe List',
            onPressed: _toHome,
          ),
        ],

        title: Text(widget.title),
      ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('\n'),

              // ingredients followed by recipe
              Image.asset('Pancake_Ing.png'),
              Image.asset('Pancake_Rec.png'),
              
              // separating button from content
              Text('\n'),
              ElevatedButton( // this is to return to home dart
                onPressed: _toHome,
                child: const Text('Previous Page'),
              ),
            ],
          ),
        ),
    );
  }
}
