// import 'dart:io';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import '../models/entry.dart';

// class AppDB {
//   static final AppDB _i = AppDB._internal();
//   factory AppDB() => _i;
//   AppDB._internal();

//   Database? _db;
//   static const _dbName = 'kasirlapak.db';
//   static const _dbVersion = 2;

//   Future<Database> get database async {
//     if (_db != null) return _db!;
//     _db = await _open();
//     return _db!;
//   }

//   Future<String> get dbPath async {
//     final base = await getDatabasesPath();
//     return p.join(base, _dbName);
//   }

//   Future<Database> _open() async {
//     final path = await dbPath;
//     return await openDatabase(
//       path,
//       version: _dbVersion,
//       onCreate: (db, v) async {
//         await db.execute('''
//           CREATE TABLE entries(
//             id INTEGER PRIMARY KEY AUTOINCREMENT,
//             is_income INTEGER NOT NULL,
//             amount REAL NOT NULL,
//             note TEXT NOT NULL,
//             created_at INTEGER NOT NULL
//           );
//         ''');
//       },
//       onUpgrade: (db, oldV, newV) async {
//         if (oldV < 2) {
//           await db.execute('ALTER TABLE entries RENAME TO entries_old;');
//           await db.execute('''
//             CREATE TABLE entries(
//               id INTEGER PRIMARY KEY AUTOINCREMENT,
//               is_income INTEGER NOT NULL,
//               amount REAL NOT NULL,
//               note TEXT NOT NULL,
//               created_at INTEGER NOT NULL
//             );
//           ''');
//           await db.execute('''
//             INSERT INTO entries (id, is_income, amount, note, created_at)
//             SELECT id, is_income, amount * 1.0, note, created_at FROM entries_old;
//           ''');
//           await db.execute('DROP TABLE entries_old;');
//         }
//       },
//     );
//   }

//   Future<List<Entry>> allEntries() async {
//     final db = await database;
//     final rows = await db.query('entries', orderBy: 'created_at DESC');
//     return rows.map(Entry.fromMap).toList();
//   }

//   Future<int> insertEntry(Entry e) async {
//     final db = await database;
//     return await db.insert('entries', e.toMap()..remove('id'));
//   }

//   Future<int> updateEntry(Entry e) async {
//     final db = await database;
//     return await db.update('entries', e.toMap(), where: 'id = ?', whereArgs: [e.id]);
//   }

//   Future<int> deleteEntry(int id) async {
//     final db = await database;
//     return await db.delete('entries', where: 'id = ?', whereArgs: [id]);
//   }

//   Future<void> nuke() async {
//     final db = await database;
//     await db.delete('entries');
//   }

//   Future<File> exportDB() async {
//     final srcPath = await dbPath;
//     await _db?.close();
//     _db = null;
//     final dir = await getApplicationDocumentsDirectory();
//     final ts = DateTime.now().toIso8601String().replaceAll(':', '-');
//     final backup = File('${dir.path}/kasirlapak_backup_$ts.db');
//     if (await backup.exists()) await backup.delete();
//     await File(srcPath).copy(backup.path);
//     _db = await _open();
//     return backup;
//   }

//   Future<void> importDB(String pickedFilePath) async {
//     final dst = await dbPath;
//     await _db?.close();
//     _db = null;
//     final sourceFile = File(pickedFilePath);
//     if (!await sourceFile.exists()) throw Exception('File not found');
//     await sourceFile.copy(dst);
//     _db = await _open();
//   }
// }
