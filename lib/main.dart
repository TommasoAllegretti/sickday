import 'package:flutter/material.dart';
import 'package:sickday/screens/add_person.dart';
import 'package:sickday/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SickDay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, inversePrimary: const Color.fromARGB(
            1, 78, 184, 246)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/person_screen': (context) => Homepage(),
        '/sickeness_screen': (context) => Homepage(),
      },
    );
  }
}
