import 'package:flutter/material.dart';

/*
flutter create --org com.mynotesjo mynotes
*/

// class Cat extends Object {
//     int name;
//     Cat(this.name);
//     @override
//     bool operator ==(covariant Cat othr) => othr.name == name;                 ==> to custom operator
//     @override
//     int get hashCode => name.hashCode;
// }

// class Name {
//   final String firstName, lastName;
//   Name(this.firstName, this.lastName);
// }
// extension FullName on Name {
//   String get fullName => '$firstName $lastName';
//   String concatenate() {
//     return fullName;
//   }
// }

// int multipli(int a, int b) => a * b;

// Future<int> futureMultipli(int a, int b) => Future.delayed(const Duration(seconds: 3), () => a * b);
// void test() async {
//   final rslt = await futureMultipli(10, 2);
//   print(rslt);
// }

// Stream<int> steamMultipli(int a, int b) => Stream.periodic(const Duration(seconds: 1), (rslt) => a * b);
// void test() async {
//   await for (final rslt in steamMultipli(2, 4)) {
//     print(rslt);
//   }
// }

// Iterable<int> getIterable() sync* {
//   yield 1;
//   yield 2;
//   yield 3;
// }
// void test() {
//   for (final value in getIterable()) {
//     if (value == 2) break;
//     print(value);
//   }
// }

class Pair<A, B> {
  final A v1;
  final B v2;
  Pair(this.v1, this.v2);
}

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        // print(Cat(1).name == Cat(1).name);

        // print(Name('Yoseph', 'Hassan').concatenate());

        // print(multipli(1, 2));

        // test();

        // test();

        // test();
        // print(getIterable());
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primarySwatch: Colors.blue,
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required this.title});

    // This widget is the home page of your application. It is stateful, meaning
    // that it has a State object (defined below) that contains fields that affect
    // how it looks.

    // This class is the configuration for the state. It holds the values (in this
    // case the title) provided by the parent (in this case the App widget) and
    // used by the build method of the State. Fields in a Widget subclass are
    // always marked "final".

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
            // This call to setState tells the Flutter framework that something has
            // changed in this State, which causes it to rerun the build method below
            // so that the display can reflect the updated values. If we changed
            // _counter without calling setState(), then the build method would not be
            // called again, and so nothing would appear to happen.
            _counter++;
        });
    }

    @override
    Widget build(BuildContext context) {
        // This method is rerun every time setState is called, for instance as done
        // by the _incrementCounter method above.
        //
        // The Flutter framework has been optimized to make rerunning build methods
        // fast, so that you can just rebuild anything that needs updating rather
        // than having to individually change instances of widgets.
        return Scaffold(
            appBar: AppBar(
                // Here we take the value from the MyHomePage object that was created by
                // the App.build method, and use it to set our appbar title.
                title: Text(widget.title),
            ),
            body: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
                    // Column is also a layout widget. It takes a list of children and
                    // arranges them vertically. By default, it sizes itself to fit its
                    // children horizontally, and tries to be as tall as its parent.
                    //
                    // Invoke "debug painting" (press "p" in the console, choose the
                    // "Toggle Debug Paint" action from the Flutter Inspector in Android
                    // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                    // to see the wireframe for each widget.
                    //
                    // Column has various properties to control how it sizes itself and
                    // how it positions its children. Here we use mainAxisAlignment to
                    // center the children vertically; the main axis here is the vertical
                    // axis because Columns are vertical (the cross axis would be
                    // horizontal).
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        const Text(
                            'You have pushed the button this many times:',
                        ),
                        Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                        ),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}
