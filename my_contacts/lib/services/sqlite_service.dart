import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/contact.dart';

class SqliteService{

  // late Database db;

  SqliteService() {
    print('SqliteService()');
    //initializeDB();
    //db=this.initializeDB().whenComplete(() => null);
}

  Future<Database> initializeDB() async{
    String path=await getDatabasesPath();
    return openDatabase(
      join(path,'contact.db'),
      onCreate: (database,version) async{
        await database.execute(
          "CREATE TABLE IF NOT EXISTS contacts(name TEXT NOT NULL,phNo TEXT NOT NULL,email TEXT NOT NULL)"
        );
      },
      version: 1
    );
  }

  Future<void> insertData(Contact contact) async{
    final Database db=await initializeDB();
    print('Welcome to insertData()');

    await db.execute(
        "CREATE TABLE IF NOT EXISTS contacts(name TEXT NOT NULL,phNo TEXT NOT NULL,email TEXT NOT NULL)");

    await db.insert('contacts',contact.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Contact>> getData() async{
    print('Welcome to getData()');
    final db=await initializeDB();

    final List<Map<String, Object?>> queryResult = await db.query('contacts');

    return queryResult.map((e) => Contact.fromMap(e)).toList();
  }
}