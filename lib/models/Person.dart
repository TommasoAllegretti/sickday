const String personsTableName = 'persons';

const String idField = '_id';
const String nameField = 'name';

const List<String> personsColumns = [
  idField,
  nameField
];

class Person {
  Person({this.id, required this.name});

  final int? id;
  final String name;

  static Person fromJson(Map<String, dynamic> json) => Person(
    id: json[idField] as int?,
    name: json[nameField] as String
  );

  Map<String, dynamic> toJson() => {
    idField: id,
    nameField: name
  };

  Person copyWith({
    int? id,
    String? name
  }) => Person(
      id: id ?? this.id,
      name: name ?? this.name
    );
}