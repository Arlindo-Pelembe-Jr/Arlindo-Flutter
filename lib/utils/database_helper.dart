import 'dart:async';
import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:coder/models/data_estudo_biblico.dart';

class DatabaseHelper{
  static const _databaseName    = 'EstudoData.db';
  static const _databaseVersion = 1;

  //singleton class
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Database _database;

  Future<Database> get database async{
    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase()async{
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    return await openDatabase(dbPath, version:_databaseVersion, onCreate: _onCreateDB);

  }

  _onCreateDB(Database db, int version) async{
    await db.execute('''
    CREATE TABLE ${Estudo.tblEstudo}(
      ${Estudo.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Estudo.colTitulo} TEXT,
      ${Estudo.colTexto} TEXT
    )
    ''');
  }


  Future<int> insertEstudo(Estudo estudo) async{
    Database db = await database;
    return await db.insert(Estudo.tblEstudo, estudo.toMap());

  }


  Future<int> updateEstudo(Estudo estudo)async{
    Database db = await database;
    return await db.update(Estudo.tblEstudo, estudo.toMap(),
    where: '${Estudo.colId}=?',
    whereArgs: [estudo.id]
    );
  }

 Future<int> deleteEstudo(int id)async{
    Database db = await database;
    return await db.delete(Estudo.tblEstudo,
    where: '${Estudo.colId}=?',
    whereArgs: [id]
    );
  }
  
  Future<List<Estudo>> fetchEstudo()async{
    Database db = await database;
    List<Map> estudos = await db.query(Estudo.tblEstudo);
    return estudos.length == 0
    ?[]
    : estudos.map((e) => Estudo.fromMap(e)).toList();
  }
  
  }