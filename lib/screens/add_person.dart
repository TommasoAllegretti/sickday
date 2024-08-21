import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  const AddPerson({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Text('Test')
            ),
          ],
        ),
      ),
    );
  }
}