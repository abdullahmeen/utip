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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UTip(),
    );
  }
}

class UTip extends StatefulWidget {
  const UTip({super.key});

  @override
  State<UTip> createState() => _UTipState();
}

class _UTipState extends State<UTip> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('UTip')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(08),
            decoration: BoxDecoration(
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(18),
              //buildthemecontext
            ),
            child: Column(
              children: [
                Text('Total Per Person', style: theme.textTheme.titleMedium),
                Text('\$29.9', style: theme.textTheme.displaySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
