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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, inversePrimary: const Color.fromARGB(
            1, 78, 184, 246)),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SickDay'),
            backgroundColor: const Color.fromRGBO(57, 192, 250, 0.7),
            bottom: const TabBar(
              tabs: [
                Text('July'),
                Text('August'),
                Text('September'),
              ],
            ),
          ),
          body: const AddPerson(),
        ),
      ),
    );
  }
}
