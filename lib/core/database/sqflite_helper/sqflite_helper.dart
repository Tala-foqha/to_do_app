// core/database/sqflite_helper/sqflite_helper.dart
import 'package:sqflite/sqflite.dart';

class SqfliteHelper {
  late Database db;
  // create Db
  //2.create table
  // 3.CRUD =>create-read-update-delete

  void initDB()async{
   await openDatabase('tasks.db',

   version: 1,
  
   onCreate: (db, version)async {
    // --step 2 create table
  await  db.execute('''
CREATE TABLE Tasks(
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
notes TEXT,
date Text,
startTime TEXT,
endTime Text,
color INTEGER,
complete INTEGER
)
''').then((value)=>print('DB created successfully'),

);

   
     
   },
    onOpen: (db) {
     print('DB oppned');}
   ).then((value)=>db=value).catchError((e){print(e.toString());});
  }

  Future<List<Map<String, Object?>>>  getFormDB()async{
  return await  db.rawQuery('Select * FROM Tasks');
  }
}