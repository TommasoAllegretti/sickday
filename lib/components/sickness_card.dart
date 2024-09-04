import 'package:flutter/material.dart';
import 'package:sickday/models/Sickness.dart';
import 'package:sickday/models/SicknessOccurency.dart';
import 'package:sickday/test_data.dart';

import '../models/Person.dart';

Sickness getSicknessName(id) {
  return sicknessList.firstWhere((item) => item.id == id);
}

Person getPersonName(id) {
  return personsList.firstWhere((item) => item.id == id);
}

class SicknessCard extends StatelessWidget {
  const SicknessCard({super.key, required this.sicknessOccurency});

  final SicknessOccurency sicknessOccurency;

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child:
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(getPersonName(sicknessOccurency.personId).name)
                ),
              ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(getSicknessName(sicknessOccurency.sicknessId).name),
                  ),
                ) ,
                Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('${sicknessOccurency.dateTime.day.toString().length > 1 ? sicknessOccurency.dateTime.day.toString() : '0${sicknessOccurency.dateTime.day}' }/${sicknessOccurency.dateTime.month.toString().length > 1 ? sicknessOccurency.dateTime.month.toString() : '0${sicknessOccurency.dateTime.month}' }/${sicknessOccurency.dateTime.year}')
                ),
            ],
          )
      ),
    );
  }
}