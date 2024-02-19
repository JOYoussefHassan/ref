/*
+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------
| terminal: flutter cli management |
+----------------------------------+
flutter _command_

[1] - _command_
  [1] - create _flutterProjectName_
  [2] - devices
  [3] - run

[2] - _runApp_                                                                  ===> when app run
  [1] - r                                                                       ===> hot reload
+----------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------
| files: lib/main.dart |
+----------------------+
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
+---------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------
| files: pubspec.yaml |
+---------------------+
name: _flutterProjectName_
description: _descriptionText_

publish_to: 'none' # Remove this line if you wish to publish to pub.dev

version: _version_

environment:
  sdk: ^_versionSdkSupported_

dependencies:                                                                   ===> important packages when develop your app
  flutter:
    sdk: flutter

  english_words: ^4.0.0
  provider: ^6.0.0

  ...

dev_dependencies:                                                               ===> important packages when develop your app
  flutter_test:
    sdk: flutter

  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
+------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------
| files: analysis_options.yaml |
+------------------------------+
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    avoid_print: false
    prefer_const_constructors_in_immutables: false
    prefer_const_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_final_fields: false
    unnecessary_breaks: true
    use_key_in_widget_constructors: false
+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------
| backend: rest_api - django |
+----------------------------+

+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| reference |
+-----------+
[1] - https://codelabs.developers.google.com/codelabs/flutter-codelab-first
*/