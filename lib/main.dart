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
      home: UTip(),
    );
  }
}

class UTip extends StatelessWidget {
  const UTip({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('UTip'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(08),
            decoration: BoxDecoration(
              color: Colors.deepPurple[400],
              borderRadius: BorderRadius.circular(8)
              //buildthemecontext
            ),
            child: Column(

              children: [
                const Text('Per Person',
                style: TextStyle(
                  fontSize: 28,
                ),),
                const Text('\$29.9'),
              ],
            )),
        ],
      ),
    );
  }
}