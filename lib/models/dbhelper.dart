import 'dart:io';

import 'package:database/models/item.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> initDb() async {
  //untuk menentukan nama database dan lokasi yang di buat
  Directory directory = await getApplicationDocumentsDirectory();
  String path = directory.path + 'item.db';

  //create read database
  var itemDatabase = openDatabase(path, version: 1, onCreate: _createDb);

  //mengembalikan nilai object sebagai hasil dari fungsi nya
  return itemDatabase;

  //buat tabel baru dengan nama item
  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE item (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nama TEXT,
        price INTEGER
      )
    ''');
  }

  //create databases
  Future<int> insert(Item object) async {
    Database db = await this.database;
    int count = await db.insert('item', object.toMap());
    return count;
  }

  //update databases
  Future<int> update(Item object) async {
    Database db = await this.database;
    int count = await db
        .update('item', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  //delete database
  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('item', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Item>> getItemList() async{
    var 
  }
}
