import 'dart:async';

import 'package:flutter/material.dart';
import 'package:send_to_background/send_to_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    _incrementCounter();
  }

  void _incrementCounter() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Timer.periodic(const Duration(seconds: 1), (_) {
        setState(() {
          count++;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Text(
            '$count',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          title: const Text('sendToBackground'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              SendToBackground.sendToBackground();
            },
          ),
        ),
      ),
    );
  }
}
