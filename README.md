# SendToBackground

A Flutter plugin to send your app to background.

# Installing
Add send_to_background to your pubspec.yaml file:

```yaml
dependencies:
    send_to_background: ^0.0.1
```
Import send_to_background in files that it will be used:

```dart
import 'package:send_to_background/send_to_background_method_channel.dart';
```

# Usage
```dart
import 'package:flutter/material.dart';
import 'package:send_to_background/send_to_background_method_channel.dart';

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
              MethodChannelSendToBackground.sendToBackground();
            },
          ),
        ),
      ),
    );
  }
}
```