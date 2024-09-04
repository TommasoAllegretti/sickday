import 'package:sickday/models/Person.dart';
import 'package:sickday/models/Sickness.dart';
import 'package:sickday/models/SicknessOccurency.dart';

List<Person> personsList = [
  Person(id: 1, name: 'Alice'),
  Person(id: 2, name: 'Tommaso'),
  Person(id: 3, name: 'Steve'),
];

List<Sickness> sicknessList = [
  Sickness(id: 1, name: 'Nausea', color: 10)
];

List<SicknessOccurency> sicknessOccurenciesList = [
  SicknessOccurency(id: 1, sicknessId: 1, personId: 1, dateTime: DateTime.now(), currentWeight: 10),
  SicknessOccurency(id: 2, sicknessId: 1, personId: 1, dateTime: DateTime.now(), currentWeight: 20),
  SicknessOccurency(id: 3, sicknessId: 1, personId: 2, dateTime: DateTime.now(), currentWeight: 30),
  SicknessOccurency(id: 4, sicknessId: 1, personId: 3, dateTime: DateTime.now(), currentWeight: 40),
];