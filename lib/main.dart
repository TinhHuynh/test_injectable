import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_injectable/main.config.dart';

final sl = GetIt.instance;

Future<void> main() async {
  const environment = String.fromEnvironment('FLAVOR', defaultValue: 'dev');
  print(environment);
  await dotenv.load(fileName: '.env.$environment');
  await configureInjections(environment);
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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

@InjectableInit()
Future<void> configureInjections(String environment) async =>
    sl.init(environment: environment);

@singleton
class AppConf {}

@singleton
class Dep0 {
  Dep0(AppConf conf) {}
}

@singleton
class Dep1 {
  final Dep22 _dep22;

  Dep1(this._dep22);
}

@singleton
class Dep2 {}

@singleton
class Dep3 {}

@singleton
class Dep4 {}

@singleton
class Dep5 {}

@singleton
class Dep6 {}

@singleton
class Dep7 {}

@singleton
class Dep8 {}

@singleton
class Dep9 {}

abstract class Dep10Interface {}

@LazySingleton(as: Dep10Interface, env: ['dev'])
class DevDep10 implements Dep10Interface {
  final Dep19 _dep;

  DevDep10(this._dep);
}

@LazySingleton(as: Dep10Interface, env: ['staging'])
class StagingDev10 implements Dep10Interface {
  final Dep20 _dep;

  StagingDev10(this._dep);
}

@singleton
class Dep11 {}

@singleton
class Dep12 {}

@singleton
class Dep13 {}

@singleton
class Dep14 {}

@singleton
class Dep15 {}

@singleton
class Dep16 {}

@singleton
class Dep17 {}

@singleton
class Dep18 {}

@singleton
class Dep19 {
  final Dep15 _dep15;

  Dep19(this._dep15);
}

@singleton
class Dep20 {
  final Dep24 _dep24;

  Dep20(this._dep24);
}

@singleton
class Dep21 {}

@singleton
class Dep22 {}

@singleton
class Dep23 {}

@singleton
class Dep24 {}

@singleton
class Dep25 {}

@singleton
class Dep26 {}

@singleton
class Dep27 {}

@singleton
class Dep28 {}

@singleton
class Dep29 {}

@singleton
class Dep30 {
  final Dep10Interface _dep10;

  Dep30(this._dep10);
}

@singleton
class Dep31 {}

@singleton
class Dep32 {}

@singleton
class Dep33 {}
