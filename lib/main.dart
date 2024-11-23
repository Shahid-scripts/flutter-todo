import 'package:english_bhashi_todo_ms/view/home/home_view.dart';
import 'package:english_bhashi_todo_ms/view/tasks/task_view.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hive',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
          displaySmall: TextStyle(
            color: Color.fromARGB(255, 234, 234, 234),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          headlineSmall: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          titleSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const HomeView(),
      //home: const TaskView(),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}
class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

///
import '../data/hive_data_store.dart';
import '../models/task.dart';
import '../view/home/home_view.dart';

Future<void> main() async {
  /// Initial Hive DB
  await Hive.initFlutter();

  /// Register Hive Adapter
  Hive.registerAdapter<Task>(TaskAdapter());

  /// Open box
  var box = await Hive.openBox<Task>("tasksBox");

  /// Delete data from previous day
  // ignore: avoid_function_literals_in_foreach_calls
  box.values.forEach((task) {
    if (task.createdAtTime.day != DateTime.now().day) {
      task.delete();
    } else {}
  });

  runApp(BaseWidget(child: const MyApp()));
}

class BaseWidget extends InheritedWidget {
  BaseWidget({Key? key, required this.child}) : super(key: key, child: child);
  final HiveDataStore dataStore = HiveDataStore();
  final Widget child;

  static BaseWidget of(BuildContext context) {
    final base = context.dependOnInheritedWidgetOfExactType<BaseWidget>();
    if (base != null) {
      return base;
    } else {
      throw StateError('Could not find ancestor widget of type BaseWidget');
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hive Todo App',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 21,
          ),
          headline3: TextStyle(
            color: Color.fromARGB(255, 234, 234, 234),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          headline4: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          headline5: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          subtitle2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          headline6: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}
*/