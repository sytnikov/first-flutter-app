import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Utip(),
    );
  }
}

class Utip extends StatefulWidget {
  const Utip({super.key});

  @override
  State<Utip> createState() => _UtipState();
}

class _UtipState extends State<Utip> {
  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);

    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold
    );

    return Scaffold(
      appBar: AppBar(title: Text('UTip')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Text(
                  'Total per person',
                  style: style,
                ),
                Text('\$20.32',
                style: style.copyWith(
                  fontSize: theme.textTheme.displaySmall?.fontSize
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
