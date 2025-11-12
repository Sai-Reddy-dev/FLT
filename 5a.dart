import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful and Stateless Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// ------------------- Stateful Widget -------------------
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful and Stateless Example'),
      ),
      body: Center( // Center the entire column
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center vertically
          children: <Widget>[
            CounterDisplay(counter),
            const SizedBox(height: 20),
            CounterButton(incrementCounter),
          ],
        ),
      ),
    );
  }
}

// ------------------- Stateless Widget for Display -------------------
class CounterDisplay extends StatelessWidget {
  final int count;
  const CounterDisplay(this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Counter Value: $count',
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

// ------------------- Stateless Widget for Button -------------------
class CounterButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CounterButton(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Increment Counter', style: TextStyle(fontSize: 18)),
    );
  }
}
