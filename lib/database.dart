import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'models/Person.dart';

const String filename = 'sick_database.db';

class AppDatabase {
  AppDatabase._init();

  static final AppDatabase instance = AppDatabase._init();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initializeDB(filename);
    return _database!;
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $personsTableName (
        $idField INTEGER PRIMARY KEY AUTOINCREMENT,
        $nameField TEXT NOT NULL
      )
    ''');
  }

  Future<Database> _initializeDB(String filename) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filename);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<Person> createPerson(Person person) async {
    final db = await instance.database;
    final id = await db.insert('Persons', person.toJson());
    return person.copyWith(id: id);
  }

  Future<List<Person>> readAllPersons() async {
    final db = await instance.database;
    final result = await db.query(personsTableName);
    return result.map((json) => Person.fromJson(json)).toList();
  }

  Future<void> close() async {
    final db = await instance.database;
    return db.close();
  }
}