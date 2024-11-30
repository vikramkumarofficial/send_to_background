# SendToBackground

A Flutter plugin to send your app to background.
![ios.gif](https://github.com/cruvie/send_to_background/blob/master/readme/ios.gif)

# Usage

```dart
import 'package:flutter/material.dart';
import 'package:send_to_background/send_to_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
```