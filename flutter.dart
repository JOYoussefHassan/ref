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

setState(_funtion_);                                                            ===> to change thing in `StatefulWidget`

class _appClassWidgetName_ extends _stateOfWidgetName_ {
  ...
  @override
  Widget build(BuildContext _contextArgVarName_) {
    var _appStateVarName_ = _contextArgVarName_.watch<_notifierClassName_>();
    return _flutterAppFunction_OR_childFlutterAppClass_
  }
  ...
}

class _newAppClassWidgetName_ extends _stateOfWidgetName_ {
  const _newAppClassWidgetName_({
    Key? key,
    required this._newAppClassWidgetArgVarName_,
  }) : super(key: key);
  ...
  @override
  Widget build(BuildContext _contextArgVarName_) {
    return _flutterAppFunction_childFlutterAppClass_
  }
}
--------------------------------------------------------------------------------
[1] - _stateOfWidgetName_
  [1] - StatelessWidget
  [2] - StatefulWidget

[2] - _flutterAppClass_
  [1] - ChangeNotifierProvider(
          create: (_contextArgVarName_) => _notifierClassName_(),
          child: _childFlutterAppClass_,
        )
  [2] - Scaffold(
          child: _childFlutterAppClass_,
        )

[3] - _childFlutterAppClass_
  [1] - MaterialApp(
          title: '_string_',
          theme: _themeFlutterAppClass_,
          home: _appClassWidgetName_(),
        )
  [2] - Text(_data_)
  [3] - ElavatedButton(
          _eventActionArgName_: _function_,
          child: _childFlutterAppClass_,
        )
  [4] - Column(
          children: [
            _childFlutterAppClass_,
            ...
          ],
        )
  [5] - Padding(
          padding: const EdgeInsets.all(_int_),
          child: _childFlutterAppClass_,
        )
  [6] - Card(
          color: _theme_.colorScheme.primary,
          child: _childFlutterAppClass_,
        )
  [7] - _appStateVarName_._mehod_OR_Property_

[4] - _themeFlutterAppClass_
  [1] - ThemeData(
          useMaterial3: _bool_,
          colorScheme: ColorScheme.fromSeed(seedColor: _colorFlutterApp_),
        )
  [2] - Theme.of(_data_)

[5] - _colorFlutterApp_
  [1] - Colors._colorName_
--------------------------------------------------------------------------------
class _notifierClassName_ extends _notifierTypeClassName_ {                     ===> to connect state with some widget with another by `watch` and `ChangeNotifierProvider`
  ...
}
--------------------------------------------------------------------------------
[1] - _notifierTypeClassName_
  [1] - ChangeNotifier
--------------------------------------------------------------------------------
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

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),
          Text(appState.current.asLowerCase),
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('Next'),
          ),
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

+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------
| widgets: _basicWidget_ |
+------------------------+
MaterialApp(theme,title,home)                                                   ===> inside `home` add `Scaffold`
Scaffold(appBar,body)                                                           ===> inside `appBar` add `AppBar`
AppBar(title)

CupertinoApp(theme,title,home)                                                  ===> inside `home` add `CupertinoPageScaffold`
CupertinoPageScaffold(navigationBar,child)                                      ===> inside `navigationBar` add `CupertinoNavigationBar`
CupertinoNavigationBar(backgroundColor,middle)

[1] - Text('_data_',style)
      DefaultTextStyle.merge(style,child)                                       ===> as `Text`
[2] - Icon(IconData,color)                                                      ===> `IconData` as `Icons.home`
+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------
| widgets: _assetWidget_ |
+------------------------+
[1] - Image.asset('_imagePath_',fit)
+-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------
| widgets: _layoutWidget_ |
+-------------------------+
[1] - Container(margin,padding,height,width,decoration,child)
[2] - Row(children,mainAxisAlignment,crossAxisAlignment,mainAxisSize)           ===> `children` use `Expand` to flex edit
[3] - Column(children,mainAxisAlignment,crossAxisAlignment,mainAxisSize)        ===> `children` use `Expand` to flex edit
  [1] - Expand(flex,child)
[4] - Center(child)
[5] - SizedBox(height,width,child)
[6] - GridView.extent()                                                         ===> pixels
      GridView.count()                                                          ===> flexes
[7] - ListView(scrollDirection)                                                 ===> as `Column` or `Row`
  [1] - ListTile(leading,title)                                                 ===> `leading` is the icon
[8] - Stack(alignment, children)                                                ===> as `position: fixed`
[9] - Card()
+-----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| reference |
+-----------+
[1] - https://codelabs.developers.google.com/codelabs/flutter-codelab-first
*/
