import 'package:flutter/material.dart';
import 'package:sickday/components/sickness_card.dart';
import 'package:sickday/test_data.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Agosto 2024',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 161, 194, 255),
                Color.fromARGB(255, 69, 134, 253)
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 161, 194, 255),
                  Color.fromARGB(255, 69, 134, 253)
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                for(var item in sicknessOccurenciesList ) SicknessCard(sicknessOccurency: item)
              ],
            ),
          )
      ),
    );
  }
}