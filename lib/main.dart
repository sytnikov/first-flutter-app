import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = '';

  final _fortuneList = [
    "A great change is just around the corner.",
    "You will soon uncover a hidden truth.",
    "Someone from your past will return unexpectedly.",
    "A small risk will bring great reward.",
    "Your dreams hold the answer you seek.",
    "New paths open when old ones close.",
    "A message will arrive when you least expect.",
    "Listen closely—your intuition is guiding you right.",
    "What you lost will find its way back.",
    "This week brings clarity and fresh beginnings.",
  ];

  void _getFortune() {
    var random = Random();
    int fortuneIndex = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortuneIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _getFortune,
              child: const Text('Get Fortune'),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _getFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
