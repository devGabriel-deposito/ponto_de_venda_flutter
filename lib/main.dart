import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  sqfliteFfiInit();

  DatabaseFactory databaseFactory = databaseFactoryFfi;
  Database db = await databaseFactory.openDatabase('db.db');

  await db.execute('''
  CREATE TABLE Product (
      id INTEGER PRIMARY KEY,
      title TEXT
  )
  ''');
  await db.insert('Product', <String, Object?>{
    'title': 'Product 1'
  });
  await db.insert('Product', <String, Object?>{
    'title': 'Product 1'
  });

  var result = await db.query('Product');

  await db.close();
}
