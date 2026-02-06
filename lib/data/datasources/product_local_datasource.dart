// import 'dart:io';

// import 'package:intl/intl.dart';
// import 'package:webview_skops/core/constants/auth_service.dart';
// import 'package:webview_skops/data/models/request/cash_category_local_model.dart';
// import 'package:webview_skops/data/models/request/category_local_model.dart';
// import 'package:webview_skops/data/models/response/product_response_model.dart';
// import 'package:webview_skops/presentation/history/models/history_terlaris_model.dart';
// import 'package:webview_skops/presentation/history/models/order_summary_model.dart';
// import 'package:webview_skops/presentation/order/models/order_model.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:uuid/uuid.dart';
// import '../../presentation/home/models/order_item.dart';
// import '../../presentation/home/models/product_sync_model.dart';
// import '../../presentation/setting/models/label_product_model.dart';
// import '../../presentation/setting/models/resi_model.dart';
// import '../../presentation/setting/widgets/order_summary.dart';
// import '../models/request/product_unit_local_model.dart';
// import '../models/response/categories_response_model.dart';
// // import 'category_local_datasource.dart';

// class ProductLocalDatasource {
//   ProductLocalDatasource._init();

//   static final ProductLocalDatasource instance = ProductLocalDatasource._init();

//   final String tableProfile = 'profile';
//   final String tableProducts = 'products';
//   final String tableOrders = 'orders';
//   final String tableOrderItems = 'order_items';
//   final String tableCategories = 'categories';
//   final String tableSatuans = 'product_units';
//   final String tableCashflows = 'cashflows';
//   final String tableCashflowCategories = 'cashflow_categories';
//   final String tableCashClosings = 'cash_closing';
//   final String tableExpeditions = 'expeditions';
//   final idUser = AuthService().userID;

//   static Database? _database;
//   Future<Database> _initDB(String newFileName) async {
//     final dbPath = await getDatabasesPath();
//     final newPath = join(dbPath, newFileName);

//     final oldPath = '${dbPath}kasirlapak.db';

//     // Jika database lama ada dan database baru belum dibuat → rename
//     if (await File(oldPath).exists() && !await File(newPath).exists()) {
//       await File(oldPath).rename(newPath);
//     }

//     return await openDatabase(
//       newPath,
//       version: 9,
//       onCreate: (db, version) async {
//         await _createOrUpdateDB(db, isNew: true);
//       },
//       onUpgrade: (db, oldVersion, newVersion) async {
//         await _migrateDB(db, oldVersion, newVersion);
//       },
//     );
//   }

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDB('kasirlapak.db');
//     return _database!;
//   }

//   Future<void> cleanSoftDeletedData(int userId) async {
//     final db = await database;
//     const condition =
//         "deleted_at IS NOT NULL AND deleted_at < datetime('now', '-2 days')";

//     await db.delete(tableProducts, where: condition);
//     await db.delete(tableCategories, where: condition);
//     await db.delete(tableCashflowCategories, where: condition);
//     await db.delete(tableSatuans, where: condition);
//     // ketika ada user baru
//     await db.update(tableCategories, {'user_id': userId});
//     await db.update(tableCashflowCategories, {'user_id': userId});
//     await db.update(tableSatuans, {'user_id': userId});
//     await db.delete(tableProducts, where: 'user_id != ?', whereArgs: [userId]);
//     await db.delete(tableOrders, where: 'user_id != ?', whereArgs: [userId]);
//     await db.delete(
//       tableOrderItems,
//       where: 'user_id != ?',
//       whereArgs: [userId],
//     );
//     await db.delete(tableCashflows, where: 'user_id != ?', whereArgs: [userId]);
//     await db.delete(
//       tableCashClosings,
//       where: 'user_id != ?',
//       whereArgs: [userId],
//     );
//     await db.delete(
//       tableExpeditions,
//       where: 'user_id != ? OR order_id = ?',
//       whereArgs: [userId, 0],
//     );
//     // Rapikan dan kompres file database
//     await db.execute('VACUUM');
//   }

//   /// Buat atau update semua struktur tabel
//   Future<void> _createOrUpdateDB(Database db, {bool isNew = false}) async {
//     // === CREATE TABLES ===
//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableProducts (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       product_id INTEGER,
//       name TEXT,
//       hpp INTEGER,
//       price INTEGER,
//       stock INTEGER,
//       image TEXT,
//       category TEXT,
//       category_id INTEGER,
//       is_best_seller INTEGER,
//       is_sync INTEGER DEFAULT 0,
//       satuan TEXT,
//       satuan_id INTEGER DEFAULT 0,
//       discount INTEGER,
//       is_discount INTEGER DEFAULT 0,
//       keterangan TEXT,
//       product_code TEXT,
//       uuid TEXT,
//       updated_at TEXT,
//       deleted_at TEXT DEFAULT NULL
//     )
//   ''');

//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableOrders (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       invoice TEXT,
//       customer TEXT,
//       nominal INTEGER,
//       total_hpp INTEGER,
//       kembali INTEGER DEFAULT 0,
//       payment_method TEXT,
//       total_item INTEGER,
//       id_kasir INTEGER,
//       nama_kasir TEXT,
//       transaction_time TEXT,
//       is_sync INTEGER DEFAULT 0,
//       is_bayar INTEGER DEFAULT 1,
//       keterangan TEXT
//     )
//   ''');

//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableOrderItems (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       id_order INTEGER,
//       id_product INTEGER,
//       quantity INTEGER,
//       price INTEGER,
//       hpp INTEGER,
//       discount INTEGER,
//       is_discount INTEGER
//     )
//   ''');

//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableCategories (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       name TEXT,
//       icon_path TEXT,
//       is_synced INTEGER DEFAULT 0,
//       uuid TEXT,
//       updated_at TEXT,
//       deleted_at TEXT
//     )
//   ''');

//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableProfile (
//       user_id INTEGER,
//       name TEXT,
//       tagline TEXT,
//       alamat TEXT,
//       footnote TEXT,
//       qris TEXT,
//       logo TEXT,
//       image TEXT,
//       is_sync INTEGER DEFAULT 0
//     )
//   ''');

//     // === CREATE TRIGGERS ===
//     await db.execute('''
//     CREATE TRIGGER IF NOT EXISTS update_stock_after_insert
//     AFTER INSERT ON $tableOrderItems
//     BEGIN
//       UPDATE $tableProducts
//       SET stock = stock - NEW.quantity
//       WHERE product_id = NEW.id_product;
//     END;
//   ''');

//     await db.execute('''
//     CREATE TRIGGER IF NOT EXISTS update_stock_after_delete
//     AFTER DELETE ON $tableOrderItems
//     BEGIN
//       UPDATE $tableProducts
//       SET stock = stock + OLD.quantity
//       WHERE product_id = OLD.id_product;
//     END;
//   ''');

//     await db.execute('''
//     CREATE TRIGGER IF NOT EXISTS update_stock_after_update
//     AFTER UPDATE ON $tableOrderItems
//     BEGIN
//       UPDATE $tableProducts
//       SET stock = stock - (NEW.quantity - OLD.quantity)
//       WHERE product_id = OLD.id_product;
//     END;
//   ''');

//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableSatuans (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       name TEXT,
//       keterangan TEXT,
//       is_synced INTEGER DEFAULT 0,
//       uuid TEXT,
//       updated_at TEXT,
//       deleted_at TEXT
//     )
//   ''');
//     await db.execute('''
//     CREATE TABLE IF NOT EXISTS $tableCashflowCategories (
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       user_id INTEGER,
//       name TEXT,
//       type TEXT DEFAULT 'income',
//       keterangan TEXT,
//       is_synced INTEGER DEFAULT 0,
//       uuid TEXT,
//       updated_at TEXT,
//       deleted_at TEXT
//     )
//   ''');
//     await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableCashflows (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         tanggal TEXT,
//         user_id INTEGER,
//         id_order INTEGER,
//         shift TEXT DEFAULT 'pagi',
//         jumlah REAL,
//         category TEXT,
//         category_id INTEGER DEFAULT 0,
//         description TEXT,
//         type TEXT DEFAULT 'income', 
//         is_sync INTEGER DEFAULT 0
//       )
//     ''');
//     await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableCashClosings (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         tanggal TEXT,
//         user_id INTEGER,
//         shift TEXT,
//         total_pemasukan REAL,
//         total_pengeluaran REAL,
//         saldo_sistem REAL,
//         saldo_fisik REAL,
//         selisih REAL,
//         catatan TEXT,
//         created_at TEXT,
//         is_sync INTEGER DEFAULT 0
//       )
//     ''');
//     await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableExpeditions (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         user_id INTEGER,
//         order_id INTEGER,
//         uuid TEXT,
//         ekspedisi TEXT,
//         resi TEXT,
//         penerima_nama TEXT,
//         penerima_alamat TEXT,
//         penerima_telp TEXT,
//         jumlah REAL,
//         berat REAL,
//         jenis_barang TEXT,
//         layanan TEXT,
//         ongkir REAL,
//         asuransi REAL,
//         tanggal TEXT,
//         status TEXT,
//         created_at TEXT DEFAULT CURRENT_TIMESTAMP,
//         is_sync INTEGER DEFAULT 0
//       )
//     ''');

//     // === SEED DATA (hanya saat database baru) ===
//     if (isNew) {
//       final categories = [
//         {'name': 'Semua', 'icon_path': 'all_categories'},
//         {'name': 'Makanan', 'icon_path': 'food'},
//         {'name': 'Minuman', 'icon_path': 'drink'},
//         {'name': 'Snack', 'icon_path': 'snack'},
//         {'name': 'Barang', 'icon_path': 'goods'},
//         {'name': 'Jasa', 'icon_path': 'service'},
//       ];
//       final productUnits = [
//         {'name': 'kg', 'keterangan': 'kilogram'},
//         {'name': 'gr', 'keterangan': 'gram'},
//         {'name': 'lt', 'keterangan': 'liter'},
//         {'name': 'porsi', 'keterangan': 'porsi'},
//         {'name': 'paket', 'keterangan': 'paket'},
//         {'name': 'unit', 'keterangan': 'unit'},
//         {'name': 'hari', 'keterangan': 'hari'},
//         {'name': 'cup', 'keterangan': 'cup'},
//       ];
//       final cashCategories = [
//         {
//           'name': 'Penjualan KL otomatis',
//           'keterangan': 'Penjualan',
//           'type': 'income',
//         },
//         {
//           'name': 'Kembalian KL otomatis',
//           'keterangan': 'Kembalian penjualan',
//           'type': 'expense',
//         },
//         {'name': 'ATK', 'keterangan': 'Alat tulis kantor', 'type': 'expense'},
//         {'name': 'Konsumsi', 'keterangan': 'Konsumsi', 'type': 'expense'},
//         {
//           'name': 'Transportasi',
//           'keterangan': 'Transportasi',
//           'type': 'expense',
//         },
//         {'name': 'Operasional', 'keterangan': 'Operasional', 'type': 'expense'},
//         {'name': 'Lain-lain', 'keterangan': 'Lain-lain', 'type': 'expense'},
//         {'name': 'Kas Awal', 'keterangan': 'Saldo awal', 'type': 'income'},
//       ];
//       final batch = db.batch();
//       for (final category in categories) {
//         batch.insert(tableCategories, category);
//       }
//       for (final satuan in productUnits) {
//         batch.insert(tableSatuans, satuan);
//       }
//       for (final cashCategory in cashCategories) {
//         batch.insert(tableCashflowCategories, cashCategory);
//       }
//       await batch.commit(noResult: true);
//       Future<void> assignUuidAndUser(String table) async {
//         final rows = await db.query(table, where: 'uuid IS NULL OR uuid = ""');
//         for (final row in rows) {
//           await db.update(
//             table,
//             {
//               'uuid': const Uuid().v4(),
//               'is_synced': 0,
//               'updated_at': DateTime.now().toIso8601String(),
//             },
//             where: 'id = ?',
//             whereArgs: [row['id']],
//           );
//         }
//         await db.update(table, {
//           'user_id': AuthService().userID,
//         }, where: 'is_synced = 0');
//       }

//       await assignUuidAndUser(tableCategories);
//       await assignUuidAndUser(tableSatuans);
//       await assignUuidAndUser(tableCashflowCategories);
//     }
//   }

//   /// Migrasi otomatis jika naik versi
//   Future<void> _migrateDB(Database db, int oldVersion, int newVersion) async {
//     // Jalankan create/update tabel (CREATE IF NOT EXISTS tidak akan merusak data lama)
//     await _createOrUpdateDB(db);

//     if (oldVersion < 3) {
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'satuan',
//         'TEXT',
//         defaultValue: 'kg',
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'satuan_id',
//         'INTEGER',
//         defaultValue: 1,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'discount',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'is_discount',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'keterangan',
//         'TEXT',
//         defaultValue: '',
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableOrders,
//         'keterangan',
//         'TEXT',
//         defaultValue: '',
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableOrderItems,
//         'discount',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableOrderItems,
//         'is_discount',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await db.execute('''
//         CREATE TABLE IF NOT EXISTS $tableSatuans (
//           id INTEGER PRIMARY KEY AUTOINCREMENT,
//           user_id INTEGER,
//           name TEXT,
//           keterangan TEXT
//         )
//       ''');
//       final count = Sqflite.firstIntValue(
//         await db.rawQuery('SELECT COUNT(*) FROM $tableSatuans'),
//       );
//       if (count == 0) {
//         final productUnits = [
//           {'name': 'kg', 'keterangan': 'kilogram'},
//           {'name': 'gr', 'keterangan': 'gram'},
//           {'name': 'lt', 'keterangan': 'liter'},
//           {'name': 'porsi', 'keterangan': 'porsi'},
//           {'name': 'paket', 'keterangan': 'paket'},
//           {'name': 'unit', 'keterangan': 'unit'},
//           {'name': 'hari', 'keterangan': 'hari'},
//           {'name': 'cup', 'keterangan': 'cup'},
//         ];
//         final batch = db.batch();
//         for (final satuan in productUnits) {
//           batch.insert(tableSatuans, satuan);
//         }
//         await batch.commit(noResult: true);
//       }
//     }
//     if (oldVersion < 4) {
//       await db.execute('''
//         UPDATE $tableProducts
//             SET 
//               satuan = 'kg',
//               satuan_id = 1,
//               discount = 0,
//               is_discount = 0,
//               keterangan = ''
//             WHERE satuan_id IS NULL
//       ''');
//     }
//     if (oldVersion < 5) {
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'product_code',
//         'TEXT',
//         defaultValue: '',
//       );
//       await db.execute('UPDATE $tableProducts SET product_code = product_id');
//     }
//     if (oldVersion < 6) {
//       await db.execute(''' DROP table if exists $tableCashflowCategories ''');
//       await db.execute(''' DROP table if exists $tableCashflows ''');
//       await db.execute(''' DROP table if exists $tableCashClosings ''');

//       await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableCashflowCategories (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         user_id INTEGER,
//         name TEXT,
//         type TEXT DEFAULT 'income',
//         keterangan TEXT
//       )
//     ''');
//       await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableCashflows (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         tanggal TEXT,
//         user_id INTEGER,
//         id_order INTEGER,
//         shift TEXT,
//         jumlah REAL,
//         category TEXT,
//         category_id INTEGER DEFAULT 0,
//         description TEXT,
//         type TEXT DEFAULT 'income', 
//         is_sync INTEGER DEFAULT 0
//       )
//     ''');
//       await db.execute('''
//         CREATE TABLE IF NOT EXISTS $tableCashClosings (
//           id INTEGER PRIMARY KEY AUTOINCREMENT,
//           tanggal TEXT,
//           user_id INTEGER,
//           shift TEXT,
//           total_pemasukan REAL,
//           total_pengeluaran REAL,
//           saldo_sistem REAL,
//           saldo_fisik REAL,
//           selisih REAL,
//           catatan TEXT,
//           created_at TEXT,
//           is_sync INTEGER DEFAULT 0
//         )
//       ''');
//       final cashCategories = [
//         {
//           'name': 'Penjualan KL otomatis',
//           'keterangan': 'Penjualan',
//           'type': 'income',
//         },
//         {
//           'name': 'Kembalian KL otomatis',
//           'keterangan': 'Kembalian penjualan',
//           'type': 'expense',
//         },
//         {'name': 'ATK', 'keterangan': 'Alat tulis kantor', 'type': 'expense'},
//         {'name': 'Konsumsi', 'keterangan': 'Konsumsi', 'type': 'expense'},
//         {
//           'name': 'Transportasi',
//           'keterangan': 'Transportasi',
//           'type': 'expense',
//         },
//         {'name': 'Operasional', 'keterangan': 'Operasional', 'type': 'expense'},
//         {'name': 'Lain-lain', 'keterangan': 'Lain-lain', 'type': 'expense'},
//         {'name': 'Kas Awal', 'keterangan': 'Saldo awal', 'type': 'income'},
//       ];
//       final batch = db.batch();
//       for (final cashCategory in cashCategories) {
//         batch.insert(tableCashflowCategories, cashCategory);
//       }
//       await batch.commit(noResult: true);
//     }
//     if (oldVersion < 7) {
//       await db.update(tableProducts, {'is_sync': 0});

//       await _addColumnIfNotExists(
//         db,
//         tableCategories,
//         'is_synced',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCategories,
//         'uuid',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCategories,
//         'updated_at',
//         'TEXT',
//         defaultValue: DateTime.now().toIso8601String(),
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCategories,
//         'deleted_at',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableSatuans,
//         'is_synced',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableSatuans,
//         'uuid',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableSatuans,
//         'updated_at',
//         'TEXT',
//         defaultValue: DateTime.now().toIso8601String(),
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableSatuans,
//         'deleted_at',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCashflowCategories,
//         'is_synced',
//         'INTEGER',
//         defaultValue: 0,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCashflowCategories,
//         'uuid',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCashflowCategories,
//         'updated_at',
//         'TEXT',
//         defaultValue: DateTime.now().toIso8601String(),
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableCashflowCategories,
//         'deleted_at',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'uuid',
//         'TEXT',
//         defaultValue: null,
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'updated_at',
//         'TEXT',
//         defaultValue: DateTime.now().toIso8601String(),
//       );
//       await _addColumnIfNotExists(
//         db,
//         tableProducts,
//         'deleted_at',
//         'TEXT',
//         defaultValue: null,
//       );

//       Future<void> assignUuidAndUser(String table) async {
//         final rows = await db.query(table, where: 'uuid IS NULL OR uuid = ""');
//         for (final row in rows) {
//           await db.update(
//             table,
//             {
//               'uuid': const Uuid().v4(),
//               'is_synced': 0,
//               'updated_at': DateTime.now().toIso8601String(),
//             },
//             where: 'id = ?',
//             whereArgs: [row['id']],
//           );
//         }
//         await db.update(table, {
//           'user_id': AuthService().userID,
//         }, where: 'is_synced = 0');
//       }

//       await assignUuidAndUser(tableCategories);
//       await assignUuidAndUser(tableSatuans);
//       await assignUuidAndUser(tableCashflowCategories);
//     }
//     if (oldVersion < 8) {
//       await db.update(tableCategories, {'user_id': idUser});
//       await db.update(tableCashflowCategories, {'user_id': idUser});
//       await db.update(tableSatuans, {'user_id': idUser});
//       await db.update(tableOrderItems, {'user_id': 1});
//       await db.delete(
//         tableProducts,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       await db.delete(
//         tableCategories,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       await db.delete(tableSatuans, where: 'user_id != ?', whereArgs: [idUser]);
//       await db.delete(
//         tableCashflowCategories,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       await db.delete(tableOrders, where: 'user_id != ?', whereArgs: [idUser]);
//       await db.delete(
//         tableCashflows,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       await db.delete(
//         tableCashClosings,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       Future<void> assignUuidIntoProducts(String table) async {
//         final rows = await db.query(table, where: 'uuid IS NULL OR uuid = ""');
//         for (final row in rows) {
//           await db.update(
//             table,
//             {
//               'uuid': const Uuid().v4(),
//               'is_sync': 0,
//               'updated_at': DateTime.now().toIso8601String(),
//             },
//             where: 'id = ?',
//             whereArgs: [row['id']],
//           );
//         }
//         await db.update(table, {
//           'user_id': AuthService().userID,
//         }, where: 'is_sync = 0');
//       }

//       final rows = await db.query(tableOrders);
//       for (final row in rows) {
//         await db.update(
//           tableOrderItems,
//           {'user_id': idUser},
//           where: 'id_order = ?',
//           whereArgs: [row['id']],
//         );
//       }
//       await db.delete(
//         tableOrderItems,
//         where: 'user_id != ?',
//         whereArgs: [idUser],
//       );
//       await assignUuidIntoProducts(tableProducts);
//     }

//     if (oldVersion < 9) {
//       await db.execute('''
//       CREATE TABLE IF NOT EXISTS $tableExpeditions (
//         id INTEGER PRIMARY KEY AUTOINCREMENT,
//         user_id INTEGER,
//         order_id INTEGER,
//         uuid TEXT,
//         ekspedisi TEXT,
//         resi TEXT,
//         penerima_nama TEXT,
//         penerima_alamat TEXT,
//         penerima_telp TEXT,
//         jumlah REAL,
//         berat REAL,
//         jenis_barang TEXT,
//         layanan TEXT,
//         ongkir REAL,
//         asuransi REAL,
//         tanggal TEXT,
//         status TEXT,
//         created_at TEXT DEFAULT CURRENT_TIMESTAMP,
//         is_sync INTEGER DEFAULT 0
//       )
//     ''');
//     }
//   }

//   Future<void> _addColumnIfNotExists(
//     Database db,
//     String table,
//     String column,
//     String type, {
//     dynamic defaultValue,
//   }) async {
//     final res = await db.rawQuery('PRAGMA table_info($table)');
//     final exists = res.any((col) => col['name'] == column);
//     if (!exists) {
//       dynamic defaultClause = "";
//       if (defaultValue != null) {
//         // Kalau TEXT kasih kutip, kalau numeric tidak perlu
//         if (type.toUpperCase() == "TEXT") {
//           defaultClause = " DEFAULT '$defaultValue'";
//         } else {
//           defaultClause = " DEFAULT $defaultValue";
//         }
//       }

//       await db.execute(
//         'ALTER TABLE $table ADD COLUMN $column $type$defaultClause',
//       );
//     }
//   }

//   Future<int> saveOrder(OrderModel order, int userId) async {
//     final db = await instance.database;

//     // Step 1: Retrieve the last invoice number for the specific user
//     final List<Map<String, dynamic>> result = await db.query(
//       tableOrders,
//       columns: ['invoice'],
//       where: 'user_id = ?', // Filter by user_id
//       whereArgs: [userId], // Pass the userId as an argument
//       orderBy:
//           'id DESC', // Assuming 'id' is the primary key and auto-incremented
//       limit: 1, // Get the latest invoice number for this user
//     );

//     // Step 2: Determine the next invoice number for this user
//     String newInvoiceNumber;
//     if (result.isEmpty) {
//       newInvoiceNumber =
//           '#01'; // Start with #01 if no previous invoices exist for this user
//     } else {
//       String lastInvoice = result.first['invoice'];
//       // Extract the numeric part of the last invoice (remove the '#')
//       int invoiceNumber = int.parse(lastInvoice.replaceAll('#', '')) + 1;
//       newInvoiceNumber =
//           '#${invoiceNumber.toString().padLeft(2, '0')}'; // Pad with zeros to ensure 2-digit format
//     }

//     // Step 3: Assign the new invoice number to the order model
//     order = order.copyWith(invoice: newInvoiceNumber);

//     // Insert the order with the updated invoice number
//     int id = await db.insert(tableOrders, order.toMapForLocal());

//     // if (order.paymentMethod == 'Tunai' && order.isBayar == true) {
//     if (order.isBayar == true) {
//       final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
//       Map<String, dynamic> data = {
//         'tanggal': today,
//         'user_id': userId,
//         'id_order': id,
//         'shift': 'pagi',
//         'jumlah': order.totalPrice + order.kembali,
//         'category': 'Penjualan',
//         'category_id': 1,
//         'description': 'Penjualan ${order.invoice}',
//         'type': 'income',
//       };
//       await db.insert(tableCashflows, data);
//       if (order.kembali > 0) {
//         data = {
//           'tanggal': today,
//           'user_id': userId,
//           'id_order': id,
//           'shift': 'pagi',
//           'jumlah': order.kembali,
//           'category': 'Kembalian',
//           'category_id': 2,
//           'description': 'Kembalian ${order.invoice}',
//           'type': 'expense',
//         };
//         await db.insert(tableCashflows, data);
//       }
//     }

//     // Insert each order item
//     for (var orderItem in order.orderItems) {
//       await db.insert(tableOrderItems, orderItem.toMapForLocal(id));
//     }

//     return id;
//   }

//   Future<int> saveItemOrder({
//     required int idOrder,
//     required int idProduct,
//     required int quantity,
//     required int price,
//     required int hpp,
//     required int discount,
//     required bool isDiscount,
//   }) async {
//     final db = await instance.database;

//     // Insert data ke tableOrderItems
//     await db.insert(tableOrderItems, {
//       'id_order': idOrder,
//       'id_product': idProduct,
//       'quantity': quantity,
//       'price': price,
//       'hpp': hpp,
//       'discount': discount,
//       'is_discount': isDiscount,
//     });

//     // Update nominal, total_hpp, dan total_item di tableOrders
//     return await db.rawUpdate(
//       '''
//     UPDATE $tableOrders
//     SET 
//       nominal = nominal + (? * ?),
//       total_hpp = total_hpp + (? * ?),
//       total_item = total_item + 1
//     WHERE id = ?
//     ''',
//       [price, quantity, hpp, quantity, idOrder], // Urutkan argumen sesuai query
//     );
//   }

//   Future<int> updateIsBayar(
//     int id,
//     int nominal,
//     int kembali,
//     String text,
//     String paymentMethod,
//     String keterangan,
//   ) async {
//     final db = await instance.database;
//     if (paymentMethod == 'Tunai') {
//       // Insert into tableCashFlow with invoice number
//       final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
//       final res = await db.rawQuery('''
//         SELECT user_id, invoice, transaction_time FROM $tableOrders WHERE id = '$id'
//       ''');
//       Map<String, dynamic> data = {
//         'tanggal': today,
//         'user_id': res.first['user_id'],
//         'id_order': id,
//         'shift': 'pagi',
//         'jumlah': nominal + kembali,
//         'category': 'Penjualan',
//         'category_id': 1,
//         'description': 'Penjualan ${res.first['invoice']}',
//         'type': 'income',
//       };
//       await db.insert(tableCashflows, data);
//       if (kembali > 0) {
//         data = {
//           'tanggal': today,
//           'user_id': res.first['user_id'],
//           'id_order': id,
//           'shift': 'pagi',
//           'jumlah': kembali,
//           'category': 'Kembalian',
//           'category_id': 2,
//           'description': 'Kembalian ${res.first['invoice']}',
//           'type': 'expense',
//         };
//         await db.insert(tableCashflows, data);
//       }
//     }
//     return await db.update(
//       tableOrders,
//       {
//         'customer': text,
//         'nominal': nominal,
//         'kembali': kembali,
//         'is_bayar': 1,
//         'payment_method': paymentMethod,
//         'keterangan': keterangan,
//       },
//       where: 'id = ?', // Specify which row to update
//       whereArgs: [id], // Pass the id of the row
//     );
//   }

//   //get order by isSync = 0
//   Future<List<OrderModel>> getOrderByIsSync() async {
//     final db = await instance.database;
//     final result = await db.query(tableOrders, where: 'is_sync = 0');

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   Future<List<OrderItem>> getOrderItemByOrderIdLocal(int idOrder) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableOrderItems,
//       where: 'id_order = ?',
//       whereArgs: [idOrder],
//     );
//     return result.map((e) => OrderItem.fromMapLocal(e)).toList();
//   }

//   //update isSync order by id
//   Future<int> updateIsSyncOrderById(int id) async {
//     final db = await instance.database;
//     return await db.update(
//       tableOrders,
//       {'is_sync': 1},
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   //get all orders
//   Future<List<OrderModel>> getAllOrder(int userId) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableOrders,
//       where: 'user_id = ?',
//       whereArgs: [userId],
//       orderBy: 'id DESC',
//     );

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   Future<List<OrderModel>> getOrderById(int orderId) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableOrders,
//       where: 'id = ?',
//       whereArgs: [orderId],
//     );

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   Future<List<OrderModel>> getAllOrderWithDate(
//     DateTime startDate,
//     DateTime endDate,
//   ) async {
//     final db = await instance.database;
//     final dateFormatter = DateFormat('yyyy-MM-dd');
//     final formattedStartDate = dateFormatter.format(startDate);
//     final formattedEndDate = dateFormatter.format(endDate);

//     final result = await db.rawQuery(
//       '''
//     SELECT * FROM $tableOrders 
//     WHERE DATE(transaction_time) BETWEEN ? AND ?
//     ORDER BY transaction_time DESC
//   ''',
//       [formattedStartDate, formattedEndDate],
//     );

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   Future<List<OrderModel>> getAllOrderbyFilter({
//     required String key,
//     required String value,
//   }) async {
//     final db = await instance.database;
//     final val = key == 'is_bayar' ? int.parse(value) : value;
//     final result = await db.query(
//       tableOrders,
//       where: '$key = ?',
//       whereArgs: [val],
//       orderBy: 'id DESC',
//     );

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   //get field id from last orders
//   Future<int> getLastOrderId() async {
//     final db = await instance.database;
//     final result = await db.query(tableOrders, orderBy: 'id DESC', limit: 1);
//     if (result.isNotEmpty) {
//       return result[0]['id'] as int;
//     } else {
//       return 0;
//     }
//   }

//   Future<List<OrderModel>> getLastOrder() async {
//     final db = await instance.database;
//     final result = await db.query(tableOrders, orderBy: 'id DESC');

//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   //get total Omzet
//   Future<OrderSummary> getTotalOmzet() async {
//     final db = await instance.database;
//     final results = await db.rawQuery('''
//       SELECT SUM(nominal) as totalOmzet, SUM(total_hpp) as totalHpp FROM $tableOrders
//     ''');
//     final orderSummary = results
//         .map((result) {
//           return OrderSummary(
//             totalOmzet: result['totalOmzet'] as int,
//             totalHpp: result['totalHpp'] as int,
//           );
//         })
//         .toList()
//         .first;
//     return orderSummary;
//   }

//   Future<List<Map<String, dynamic>>> getTotalOmzetMap() async {
//     final db = await instance.database;
//     return await db.rawQuery('''
//       SELECT SUM(nominal) as totalOmzet, SUM(total_hpp) as totalHpp FROM $tableOrders
//     ''');
//   }

//   //get order item by id order
//   Future<List<Map<String, dynamic>>> getAllOrderWithDetails(
//     DateTime startDate,
//     DateTime endDate,
//     int userID,
//   ) async {
//     final db = await instance.database;

//     final dateFormatter = DateFormat('yyyy-MM-dd');
//     final formattedStartDate = dateFormatter.format(startDate);
//     final formattedEndDate = dateFormatter.format(endDate);

//     return await db.rawQuery(
//       '''
//     SELECT oi.id, oi.id_order, oi.id_product, oi.quantity, oi.price, oi.discount as item_discount, oi.is_discount as item_is_discount, p.name, p.image, p.discount, p.is_discount, o.id as order_id, o.invoice, o.nominal, o.total_hpp, o.payment_method, o.total_item, o.nama_kasir, o.customer, o.transaction_time, o.is_bayar, o.keterangan
//     FROM $tableOrderItems oi
//     INNER JOIN $tableOrders o ON oi.id_order = o.id
//     INNER JOIN $tableProducts p ON oi.id_product = p.product_id
//     WHERE DATE(o.transaction_time) BETWEEN ? AND ? AND o.user_id = ?
//     ''',
//       [formattedStartDate, formattedEndDate, userID],
//     );
//   }

//   Future<List<Map<String, dynamic>>> getOrderDetailsByOrderId(
//     int orderId,
//   ) async {
//     final db = await instance.database;
//     // Melakukan join antara tabel OrderDetail dan Product
//     return await db.rawQuery(
//       '''
//     SELECT oi.id, oi.id_order, oi.id_product, oi.quantity, oi.price as item_price, p.name, p.image, p.price, p.stock, p.discount, p.is_discount, oi.discount as item_discount, oi.is_discount as item_is_discount
//     FROM $tableOrderItems oi
//     INNER JOIN $tableProducts p ON oi.id_product = p.product_id
//     WHERE oi.id_order = ? AND p.deleted_at is NULL
//   ''',
//       [orderId],
//     );
//   }

//   Future<List<Map<String, dynamic>>> addItemOrderDetail(
//     int idDetailOrder,
//     int qty,
//   ) async {
//     final db = await instance.database;
//     await db.rawQuery(
//       '''
//     UPDATE $tableOrderItems SET quantity = quantity + $qty WHERE id = ?
//   ''',
//       [idDetailOrder],
//     );

//     List<Map<String, dynamic>> priceResult = await db.rawQuery(
//       '''
//     SELECT id_order, price, hpp, quantity FROM $tableOrderItems WHERE id = ?
//   ''',
//       [idDetailOrder],
//     );

//     if (priceResult.isNotEmpty) {
//       final idOrder = priceResult[0]['id_order'];
//       final price = priceResult[0]['price'];
//       final hpp = priceResult[0]['hpp'];
//       int quantity = qty;

//       // Update the orders table
//       return await db.rawQuery(
//         '''
//       UPDATE $tableOrders SET 
//         nominal = nominal + (? * ?), 
//         total_hpp = total_hpp + (? * ?), 
//         total_item = total_item + $quantity 
//       WHERE id = ?
//     ''',
//         [price, quantity, hpp, quantity, idOrder],
//       );
//     } else {
//       throw Exception("Order item not found");
//     }
//   }

//   Future<List<Map<String, dynamic>>> removeItemOrderDetail(
//     int idDetailOrder,
//     int qty,
//   ) async {
//     final db = await instance.database;

//     List<Map<String, dynamic>> priceResult = await db.rawQuery(
//       '''
//     SELECT id_order, price, hpp FROM $tableOrderItems WHERE id = ?
//   ''',
//       [idDetailOrder],
//     );

//     if (priceResult.isNotEmpty) {
//       final idOrder = priceResult[0]['id_order'];
//       final price = priceResult[0]['price'];
//       final hpp = priceResult[0]['hpp'];

//       await db.rawQuery(
//         '''
//         UPDATE $tableOrderItems SET quantity = quantity - ? WHERE id = ?
//       ''',
//         [qty, idDetailOrder],
//       );

//       // Update the orders table
//       return await db.rawQuery(
//         '''
//       UPDATE $tableOrders SET 
//           nominal = nominal - (? * ?), 
//           total_hpp = total_hpp - (? * ?), 
//           total_item = total_item - ? 
//         WHERE id = ?
//       ''',
//         [price, qty, hpp, qty, qty, idOrder],
//       );
//     } else {
//       throw Exception("Order item not found");
//     }
//   }

//   Future<List<Map<String, dynamic>>> deleteItemOrderDetail(
//     int idDetailOrder,
//   ) async {
//     final db = await instance.database;

//     List<Map<String, dynamic>> priceResult = await db.rawQuery(
//       '''
//       SELECT id_order, price, hpp, quantity FROM $tableOrderItems WHERE id = ?
//     ''',
//       [idDetailOrder],
//     );

//     if (priceResult.isNotEmpty) {
//       final idOrder = priceResult[0]['id_order'];
//       final price = priceResult[0]['price'];
//       final hpp = priceResult[0]['hpp'];
//       final quantity = priceResult[0]['quantity'];

//       await db.rawQuery(
//         '''
//         DELETE FROM $tableOrderItems WHERE id = ?
//       ''',
//         [idDetailOrder],
//       );

//       return await db.rawQuery(
//         '''
//         UPDATE $tableOrders SET 
//           nominal = nominal - (? * ?), 
//           total_hpp = total_hpp - (? * ?), 
//           total_item = total_item - ? 
//         WHERE id = ?
//       ''',
//         [price, quantity, hpp, quantity, quantity, idOrder],
//       );
//     } else {
//       throw Exception("Order item not found");
//     }
//   }

//   Future<void> deleteZeroQty() async {
//     final db = await instance.database;
//     await db.delete(tableOrderItems, where: 'quantity = 0');
//   }

//   Future<void> deleteOrder(int id) async {
//     final db = await instance.database;
//     await db.delete(tableOrders, where: 'id = ?', whereArgs: [id]);
//     await db.delete(tableOrderItems, where: 'id_order = ?', whereArgs: [id]);
//     await db.delete(tableCashflows, where: 'id_order = ?', whereArgs: [id]);
//   }

//   Future<void> deleteItemOrder(int id) async {
//     final db = await instance.database;
//     await db.delete(tableOrderItems, where: 'id = ?', whereArgs: [id]);
//   }

//   Future<List<OrderItem>> getOrderItemByOrderId(int idOrder) async {
//     final db = await instance.database;
//     final result = await db.query('order_items', where: 'id_order = $idOrder');
//     return result.map((e) => OrderItem.fromMap(e)).toList();
//   }

//   //remove all data product
//   Future<void> removeAllProduct() async {
//     final db = await instance.database;
//     await db.delete(tableProducts);
//   }

//   //insert data product from list product
//   // Future<void> insertAllProduct(List<Product> products, int userID) async {
//   //   final db = await instance.database;
//   //   for (var product in products) {
//   //     await db.insert(tableProducts, product.toLocalMap());
//   //   }
//   // }
//   Future<void> insertAllProduct(List<Product> products, int userID) async {
//     final db = await instance.database;
//     for (var product in products) {
//       var productMap = product.toLocalMap();
//       // productMap['user_id'] = userID;
//       await db.insert(tableProducts, productMap);
//     }
//     await db.delete(tableProducts, where: 'user_id != ?', whereArgs: [userID]);
//   }

//   Future<void> insertAllCategory(
//     List<Categories> categories,
//     int userID,
//   ) async {
//     final db = await instance.database;
//     for (var category in categories) {
//       var categoryMap = category.toLocalMap();
//       await db.insert(tableCategories, categoryMap);
//     }
//     await db.delete(
//       tableCategories,
//       where: 'user_id != ?',
//       whereArgs: [userID],
//     );
//   }

//   //------------- category -----------
//   // cek data category
//   Future<int> cekCategory() async {
//     final db = await instance.database;
//     final result = await db.rawQuery('''
//       SELECT count(*) as ada FROM $tableCategories WHERE deleted_at IS NULL
//     ''');
//     final ada = result.first['ada'] as int;
//     return ada;
//   }

//   // insert category
//   Future<int> insertCategory(CategoryLocalModel category) async {
//     final db = await instance.database;
//     int id = await db.insert(tableCategories, category.toMapForLocal());
//     return id;
//   }

//   // update category
//   Future<int> updateCategory(CategoryLocalModel category) async {
//     final db = await instance.database;
//     return await db.update(
//       tableCategories,
//       category.toMap(),
//       where: 'id = ?',
//       whereArgs: [category.id],
//     );
//   }

//   // delete category
//   Future<int> deleteCategoryById(int id) async {
//     final db = await instance.database;
//     // Cek apakah category ini digunakan di tabel products
//     final List<Map<String, dynamic>> result = await db.query(
//       tableProducts,
//       where: 'category_id = ?',
//       whereArgs: [id],
//     );

//     if (result.isNotEmpty) {
//       // Category masih digunakan, tidak bisa dihapus
//       return -1;
//     }

//     return await db.update(
//       tableCategories,
//       {
//         'deleted_at': DateTime.now().toIso8601String(),
//         'updated_at': DateTime.now().toIso8601String(),
//         'is_synced': 0,
//       },
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<void> removeAllCategory() async {
//     final db = await instance.database;
//     await db.delete(tableCategories);
//   }

//   // get all data category
//   Future<List<CategoryLocalModel>> getAllCategoriesHome() async {
//     final db = await instance.database;
//     final result = await db.query(tableCategories, where: 'deleted_at IS NULL');
//     return result.map((e) => CategoryLocalModel.fromMap(e)).toList();
//   }

//   Future<List<CategoryLocalModel>> getAllCategories() async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableCategories,
//       where: 'id != 1 AND deleted_at IS NULL',
//     );
//     return result.map((e) => CategoryLocalModel.fromMap(e)).toList();
//   }

//   //get id only
//   Future<List<Map<String, dynamic>>> getOnlyCategoryId() async {
//     final db = await instance.database;
//     final List<Map<String, dynamic>> result = await db.query(
//       tableCategories,
//       columns: ['id'], // Specify the columns to select
//     );
//     return result;
//   }

//   Future<Map<int, int>> buildCategoryIdLookup() async {
//     final categories = await getOnlyCategoryId();
//     // ignore: prefer_for_elements_to_map_fromiterable
//     final idLookup = Map<int, int>.fromIterable(
//       categories.where(
//         (category) => category['id'] != null && category['categoryId'] != null,
//       ), // Filter out null values
//       key: (category) => category['id'],
//       value: (category) => category['categoryId'],
//     );

//     return idLookup;
//   }

//   Future<int> updateOrderDetail(
//     int orderId,
//     int orderDetailId,
//     int newQuantity,
//   ) async {
//     // Dapatkan instance database
//     final db = await instance.database;

//     // Buat map untuk kolom yang akan diupdate
//     Map<String, dynamic> updatedValues = {
//       'quantity': newQuantity, // kolom yang diupdate
//     };

//     // Lakukan update pada tabel 'order_items'
//     // Sesuaikan nama tabel dan kondisi 'where' dengan skema database Anda
//     return await db.update(
//       tableOrderItems, // Nama tabel
//       updatedValues, // Data yang akan diupdate
//       where: 'id = ? AND order_id = ?', // Kondisi update
//       whereArgs: [
//         orderDetailId,
//         orderId,
//       ], // Argument yang sesuai dengan kondisi
//     );
//   }

//   //------------- product -----------
//   //insert product
//   Future<int> insertProduct(Product product) async {
//     final db = await instance.database;

//     final existingProduct = await db.query(
//       tableProducts,
//       where: 'product_code = ?',
//       whereArgs: [product.productCode],
//     );

//     if (existingProduct.isNotEmpty) {
//       throw Exception("Kode produk sudah digunakan");
//     }

//     int id = await db.insert(tableProducts, product.toMap());
//     return id;
//     // return product.copyWith(id: id);
//   }

//   //update product
//   Future<int> updateProduct(Product product) async {
//     final db = await instance.database;

//     final oldData = await db.query(
//       tableProducts,
//       where: 'id = ?',
//       whereArgs: [product.id],
//     );

//     if (oldData.isEmpty) return 0;

//     final oldImagePath = oldData.first['image'] as String?;
//     final oldSku = oldData.first['product_code'] as String?;

//     // kalau kode produk berubah
//     if (product.productCode != oldSku) {
//       // cek apakah kode produk baru sudah ada di produk lain
//       final existingProduct = await db.query(
//         tableProducts,
//         where: 'product_code = ?',
//         whereArgs: [product.productCode],
//       );

//       if (existingProduct.isNotEmpty) return -2;

//       // // cek apakah kode produk lama sudah dipakai di order_items
//       // final usedInOrders = await db.query(
//       //   'order_items',
//       //   where: 'id_product = ?',
//       //   whereArgs: [oldSku],
//       // );

//       // if (usedInOrders.isNotEmpty) return -1;
//     }

//     // update data baru ke database
//     final rowsAffected = await db.update(
//       tableProducts,
//       product.toMap(),
//       where: 'id = ?',
//       whereArgs: [product.id],
//     );
//     // kalau berhasil update dan gambar memang berubah → hapus yang lama
//     if (rowsAffected > 0 &&
//         oldImagePath != null &&
//         oldImagePath.isNotEmpty &&
//         oldImagePath != product.image) {
//       await deleteImage(oldImagePath);
//     }

//     return rowsAffected;
//   }

//   // delete product
//   Future<int> deleteProductById(int id) async {
//     final db = await instance.database;

//     // Ambil SKU produk
//     final product = await db.query(
//       tableProducts,
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//     final sku = product.first['product_id'];
//     // Cek apakah produk digunakan di tabel OrderItem
//     final List<Map<String, dynamic>> result = await db.query(
//       'order_items',
//       where: 'id_product = ?',
//       whereArgs: [sku],
//     );

//     if (result.isNotEmpty) {
//       // Produk masih digunakan, tidak bisa dihapus
//       return -1;
//     }

//     await deleteImage(product.first['image'] as String?);
//     return await db.update(
//       tableProducts,
//       {
//         'deleted_at': DateTime.now().toIso8601String(),
//         'updated_at': DateTime.now().toIso8601String(),
//         'is_sync': 0,
//       },
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<void> deleteImage(String? imagePath) async {
//     if (imagePath == null || imagePath.isEmpty) return;
//     final file = File(imagePath);
//     if (await file.exists()) {
//       await file.delete();
//     }
//   }

//   // deleteAllOrders (truncate tabel Order and OrderItems)
//   Future<void> deleteAllOrders() async {
//     final db = await instance.database;
//     await db.rawDelete('DELETE FROM $tableOrderItems');
//     await db.rawDelete('DELETE FROM $tableOrders');
//     await db.rawDelete('DELETE FROM sqlite_sequence WHERE name = ?', [
//       tableOrders,
//     ]);
//     await db.rawDelete('DELETE FROM sqlite_sequence WHERE name = ?', [
//       tableOrderItems,
//     ]);
//   }

//   //get all data product
//   Future<List<Product>> getAllProduct(int userId) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableProducts,
//       where: 'user_id = $userId AND deleted_at IS NULL',
//       orderBy: 'id DESC',
//     );

//     return result.map((e) => Product.fromMap(e)).toList();
//   }

//   Future<List<Product>> getSearchProduct() async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableProducts,
//       where: 'deleted_at IS NULL AND user_id = $idUser',
//       orderBy: 'name ASC',
//     );

//     return result.map((e) => Product.fromMap(e)).toList();
//   }

//   Future<List<Product>> searchProduct(String keyword) async {
//     final db = await instance.database;
//     final maps = await db.query(
//       tableProducts,
//       where:
//           '(name LIKE ? OR product_code LIKE ?) AND user_id = $idUser AND deleted_at IS NULL',
//       whereArgs: ['%$keyword%'],
//     );
//     return maps.map((e) => Product.fromMap(e)).toList();
//   }

//   //get product by category id
//   Future<List<Product>> getProductByCategoryId(int id, int userID) async {
//     final db = await instance.database;
//     if (id == 1) {
//       final result = await db.query(
//         tableProducts,
//         where: 'user_id = $userID AND deleted_at IS NULL',
//         orderBy: 'id DESC',
//       );
//       return result.map((e) => Product.fromMap(e)).toList();
//     } else {
//       final result = await db.query(
//         tableProducts,
//         where: 'category_id = ? AND user_id = ? AND deleted_at IS NULL',
//         whereArgs: [id, userID],
//         orderBy: 'id DESC',
//       );
//       return result.map((e) => Product.fromMap(e)).toList();
//     }
//   }

//   //get product by id
//   Future<Product> getProductById(int id) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableProducts,
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//     return Product.fromMap(result.first);
//   }

//   //get product by kode
//   Future<Product?> getProductByKode(String kode) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableProducts,
//       where: 'product_code = ? AND user_id = ? AND deleted_at IS NULL',
//       whereArgs: [kode, idUser],
//     );
//     if (result.isEmpty) return null; // << jelas kalau tidak ada
//     return Product.fromMap(result.first);
//   }

//   Future<int> getProductCategoryId(int id) async {
//     final db = await instance.database;
//     final result = await db.rawQuery('''
//       SELECT category_id  FROM $tableProducts WHERE category_id = $id  AND deleted_at IS NULL
//     ''');
//     final ada = result.first['category_id'] as int;
//     return ada;
//   }

//   Future<List<ProductSyncModel>> getProductByIsSync() async {
//     final db = await instance.database;
//     final result = await db.query('$tableProducts WHERE deleted_at IS NULL');

//     return result.map((e) => ProductSyncModel.fromLocalMap(e)).toList();
//   }

//   Future<int> updateIsSyncProductById(int id) async {
//     final db = await instance.database;
//     return await db.update(
//       tableProducts,
//       {'is_sync': 1},
//       where: 'id = ? AND  AND deleted_at IS NULL',
//       whereArgs: [id],
//     );
//   }

//   //------------- productUnit -----------
//   // cek data productUnit
//   Future<int> cekProductUnit() async {
//     final db = await instance.database;
//     final result = await db.rawQuery('''
//       SELECT count(*) as ada FROM $tableSatuans WHERE deleted_at IS NULL
//     ''');
//     final ada = result.first['ada'] as int;
//     return ada;
//   }

//   // insert productUnit
//   Future<int> insertProductUnit(ProductUnitLocalModel productUnit) async {
//     final db = await instance.database;
//     int id = await db.insert(tableSatuans, productUnit.toMapForLocal());
//     return id;
//   }

//   // update productUnit
//   Future<int> updateProductUnit(ProductUnitLocalModel productUnit) async {
//     final db = await instance.database;
//     return await db.update(
//       tableSatuans,
//       productUnit.toMap(),
//       where: 'id = ?',
//       whereArgs: [productUnit.id],
//     );
//   }

//   // delete productUnit
//   Future<int> deleteProductUnitById(int id) async {
//     final db = await instance.database;
//     // Cek apakah productUnit ini digunakan di tabel products
//     final List<Map<String, dynamic>> result = await db.query(
//       tableProducts,
//       where: 'satuan_id = ?',
//       whereArgs: [id],
//     );

//     if (result.isNotEmpty) {
//       // ProductUnit masih digunakan, tidak bisa dihapus
//       return -1;
//     }

//     return await db.update(
//       tableSatuans,
//       {
//         'deleted_at': DateTime.now().toIso8601String(),
//         'updated_at': DateTime.now().toIso8601String(),
//         'is_synced': 0,
//       },
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<void> removeAllProductUnit() async {
//     final db = await instance.database;
//     await db.delete(tableSatuans);
//   }

//   // get all data product unit
//   Future<List<ProductUnitLocalModel>> getAllProductUnitsHome() async {
//     final db = await instance.database;
//     final result = await db.query(tableSatuans);
//     return result.map((e) => ProductUnitLocalModel.fromMap(e)).toList();
//   }

//   Future<List<ProductUnitLocalModel>> getAllProductUnits() async {
//     final db = await instance.database;
//     final result = await db.query(tableSatuans);
//     return result.map((e) => ProductUnitLocalModel.fromMap(e)).toList();
//   }

//   //get id only
//   Future<List<Map<String, dynamic>>> getOnlyProductUnitId() async {
//     final db = await instance.database;
//     final List<Map<String, dynamic>> result = await db.query(
//       tableSatuans,
//       columns: ['id'], // Specify the columns to select
//     );
//     return result;
//   }

//   Future<Map<int, int>> buildProductUnitIdLookup() async {
//     final produtInits = await getOnlyProductUnitId();
//     // ignore: prefer_for_elements_to_map_fromiterable
//     final idLookup = Map<int, int>.fromIterable(
//       produtInits.where(
//         (productUnit) =>
//             productUnit['id'] != null && productUnit['productUnitId'] != null,
//       ), // Filter out null values
//       key: (productUnit) => productUnit['id'],
//       value: (productUnit) => productUnit['productUnitId'],
//     );

//     return idLookup;
//   }

//   Future<Map<String, int>> getTotalOrder() async {
//     final db = await database; // koneksi ke SQLite

//     final result = await db.rawQuery("""
//       SELECT 
//         COUNT(CASE 
//                 WHEN DATE(transaction_time) = DATE('now','localtime') 
//                 THEN 1 
//               END) AS total_today,
//         COUNT(CASE 
//                 WHEN strftime('%W', transaction_time) = strftime('%W', 'now','localtime')
//                 AND strftime('%Y', transaction_time) = strftime('%Y', 'now','localtime')
//                 THEN 1 
//               END) AS total_week,
//         COUNT(CASE 
//                 WHEN strftime('%m', transaction_time) = strftime('%m', 'now','localtime')
//                 AND strftime('%Y', transaction_time) = strftime('%Y', 'now','localtime')
//                 THEN 1 
//               END) AS total_month,
//         COUNT(CASE 
//                 WHEN strftime('%Y', transaction_time) = strftime('%Y', 'now','localtime')
//                 THEN 1 
//               END) AS total_year
//       FROM $tableOrders;
//     """);

//     if (result.isNotEmpty) {
//       return {
//         "today": result.first["total_today"] as int,
//         "week": result.first["total_week"] as int,
//         "month": result.first["total_month"] as int,
//         "year": result.first["total_year"] as int,
//       };
//     }
//     return {"today": 0, "week": 0, "month": 0, "year": 0};
//   }

//   Future<Map<String, int>> getTotalItem() async {
//     final db = await database; // koneksi ke SQLite

//     final result = await db.rawQuery("""
//       SELECT 
//       SUM(CASE 
//             WHEN DATE(transaction_time) = DATE('now', 'localtime') 
//             THEN total_item ELSE 0 
//           END) AS total_today,
//       SUM(CASE 
//             WHEN strftime('%W', transaction_time) = strftime('%W', 'now', 'localtime')
//             AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_item ELSE 0 
//           END) AS total_week,
//       SUM(CASE 
//             WHEN strftime('%m', transaction_time) = strftime('%m', 'now', 'localtime')
//             AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_item ELSE 0 
//           END) AS total_month,
//       SUM(CASE 
//             WHEN strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_item ELSE 0 
//           END) AS total_year
//     FROM $tableOrders;
//     """);

//     if (result.isNotEmpty) {
//       return {
//         "today": result.first["total_today"] as int,
//         "week": result.first["total_week"] as int,
//         "month": result.first["total_month"] as int,
//         "year": result.first["total_year"] as int,
//       };
//     }
//     return {"today": 0, "week": 0, "month": 0, "year": 0};
//   }

//   Future<Map<String, int>> getTotalOmset() async {
//     final db = await database; // koneksi ke SQLite

//     final result = await db.rawQuery("""
//   SELECT 
//   SUM(CASE 
//         WHEN DATE(transaction_time) = DATE('now', 'localtime') 
//         THEN nominal ELSE 0 
//       END) AS total_today,
//   SUM(CASE 
//         WHEN strftime('%W', transaction_time) = strftime('%W', 'now', 'localtime')
//          AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//         THEN nominal ELSE 0 
//       END) AS total_week,
//   SUM(CASE 
//         WHEN strftime('%m', transaction_time) = strftime('%m', 'now', 'localtime')
//          AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//         THEN nominal ELSE 0 
//       END) AS total_month,
//   SUM(CASE 
//         WHEN strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//         THEN nominal ELSE 0 
//       END) AS total_year
// FROM $tableOrders;
// """);

//     if (result.isNotEmpty) {
//       return {
//         "today": result.first["total_today"] as int,
//         "week": result.first["total_week"] as int,
//         "month": result.first["total_month"] as int,
//         "year": result.first["total_year"] as int,
//       };
//     }
//     return {"today": 0, "week": 0, "month": 0, "year": 0};
//   }

//   Future<Map<String, int>> getTotalHpp() async {
//     final db = await database; // koneksi ke SQLite

//     final result = await db.rawQuery("""
//       SELECT 
//       SUM(CASE 
//             WHEN DATE(transaction_time) = DATE('now', 'localtime') 
//             THEN total_hpp ELSE 0 
//           END) AS total_today,
//       SUM(CASE 
//             WHEN strftime('%W', transaction_time) = strftime('%W', 'now', 'localtime')
//             AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_hpp ELSE 0 
//           END) AS total_week,
//       SUM(CASE 
//             WHEN strftime('%m', transaction_time) = strftime('%m', 'now', 'localtime')
//             AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_hpp ELSE 0 
//           END) AS total_month,
//       SUM(CASE 
//             WHEN strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')
//             THEN total_hpp ELSE 0 
//           END) AS total_year
//     FROM $tableOrders;
//     """);

//     if (result.isNotEmpty) {
//       return {
//         "today": result.first["total_today"] as int,
//         "week": result.first["total_week"] as int,
//         "month": result.first["total_month"] as int,
//         "year": result.first["total_year"] as int,
//       };
//     }
//     return {"today": 0, "week": 0, "month": 0, "year": 0};
//   }

//   // ------------- terlaris
//   Future<List<HistoryTerlarisModel>> getTerlaris(String periode) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "DATE(o.transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "strftime('%m', o.transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//     }
//     final db = await database;
//     final result = await db.rawQuery('''
//     SELECT p.name, SUM(oi.quantity) AS total_terjual, p.satuan
//     FROM $tableOrderItems oi
//     JOIN $tableProducts p ON oi.id_product = p.product_id
//     JOIN $tableOrders o ON oi.id_order = o.id
//     WHERE $whereClause
//     GROUP BY oi.id_product
//     ORDER BY total_terjual DESC
//     LIMIT 10
//   ''');

//     return result
//         .map(
//           (e) => HistoryTerlarisModel(
//             name: e['name'] as String,
//             total: (e['total_terjual'] as int?) ?? 0,
//             satuan: e['satuan'] as String,
//           ),
//         )
//         .toList();
//   }

//   Future<List<OrderSummaryModel>> getOrderSummary(
//     String periode, {
//     String groupBy = "day",
//   }) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "WHERE DATE(transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "WHERE strftime('%W', transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "WHERE strftime('%m', transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "WHERE strftime('%Y', transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "all":
//         whereClause = "";
//         break;
//     }

//     final db = await database;

//     String query = "";

//     if (groupBy == "day") {
//       query =
//           '''
//         SELECT 
//           DATE(transaction_time) AS label,
//           strftime('%w', transaction_time) AS weekday,
//           COUNT(*) AS count
//         FROM $tableOrders
//         $whereClause
//         GROUP BY DATE(transaction_time)
//         ORDER BY count DESC
//         LIMIT 7
//       ''';
//     } else if (groupBy == "hour") {
//       query =
//           '''
//         SELECT 
//           strftime('%H', transaction_time) AS label,
//           DATE(transaction_time) AS date,
//           strftime('%w', transaction_time) AS weekday,
//           COUNT(*) AS count
//         FROM $tableOrders
//         $whereClause
//         GROUP BY strftime('%H', transaction_time), DATE(transaction_time)
//         ORDER BY count DESC
//         LIMIT 7
//       ''';
//     } else if (groupBy == "product") {
//       query =
//           '''
//       SELECT 
//         p.name AS label,
//         COUNT(oi.id) AS count
//       FROM $tableOrderItems oi
//       JOIN $tableProducts p ON oi.id_product = p.product_id
//       JOIN $tableOrders o ON o.id = oi.id_order
//       $whereClause
//       GROUP BY oi.id_product
//       ORDER BY count DESC
//       LIMIT 7
//     ''';
//     }

//     final result = await db.rawQuery(query);

//     return result.map((e) {
//       return OrderSummaryModel(
//         hari: e['label'] as String,
//         jumlahOrder: e['count'] is int
//             ? e['count'] as int
//             : int.parse(e['count'].toString()),
//         totalProduk: e['count'] is int
//             ? e['count'] as int
//             : int.parse(e['count'].toString()),
//         jam: e['date'] as String,
//       );
//     }).toList();
//   }

//   Future<List<OrderSummaryModel>> getTopHoursPerDay(String periode) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "DATE(o.transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "strftime('%m', o.transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "all":
//         whereClause = "";
//         break;
//     }

//     final db = await database;

//     // Query tanpa ROW_NUMBER()
//     String query =
//         '''
//     SELECT 
//       CASE CAST(strftime('%w', o.transaction_time) AS INTEGER)
//         WHEN 0 THEN 'Ahad'
//         WHEN 1 THEN 'Senin'
//         WHEN 2 THEN 'Selasa'
//         WHEN 3 THEN 'Rabu'
//         WHEN 4 THEN 'Kamis'
//         WHEN 5 THEN 'Jumat'
//         WHEN 6 THEN 'Sabtu'
//       END AS hari,
//       strftime('%H', o.transaction_time) AS jam,
//       COUNT(DISTINCT o.id) AS jumlah_order,
//       SUM(oi.quantity) AS total_produk_terjual
//     FROM $tableOrders o
//     JOIN $tableOrderItems oi ON o.id = oi.id_order
//     ${whereClause.isNotEmpty ? "WHERE $whereClause" : ""}
//     GROUP BY hari, jam
//     ORDER BY hari, jumlah_order DESC, total_produk_terjual DESC, jam ASC;
//   ''';

//     final result = await db.rawQuery(query);

//     // Batasi hanya 5 jam terbanyak per hari di Dart
//     Map<String, List<Map<String, dynamic>>> grouped = {};
//     for (var row in result) {
//       final day = row['hari'] as String;
//       grouped.putIfAbsent(day, () => []);
//       if (grouped[day]!.length < 5) {
//         grouped[day]!.add(row);
//       }
//     }

//     // Flatten hasil
//     List<Map<String, dynamic>> finalResult = [];
//     grouped.forEach((_, rows) => finalResult.addAll(rows));

//     return finalResult.map((e) {
//       return OrderSummaryModel(
//         hari: e['hari'] as String,
//         jumlahOrder: e['jumlah_order'] is int
//             ? e['jumlah_order'] as int
//             : int.parse(e['jumlah_order'].toString()),
//         totalProduk: e['total_produk_terjual'] is int
//             ? e['total_produk_terjual'] as int
//             : int.parse(e['total_produk_terjual'].toString()),
//         jam: e['jam'] as String,
//       );
//     }).toList();
//   }

//   Future<List<OrderSummaryModel>> getTopDatesSummary(String periode) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "DATE(o.transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "strftime('%m', o.transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "all":
//         whereClause = "";
//         break;
//     }

//     final db = await database;

//     // Ambil rekap order per tanggal+jam
//     String query =
//         '''
//     SELECT 
//       DATE(o.transaction_time) AS tanggal,
//       strftime('%H', o.transaction_time) AS jam,
//       COUNT(DISTINCT o.id) AS jumlah_order,
//       SUM(oi.quantity) AS total_produk_terjual
//     FROM $tableOrders o
//     JOIN $tableOrderItems oi ON o.id = oi.id_order
//     ${whereClause.isNotEmpty ? "WHERE $whereClause" : ""}
//     GROUP BY tanggal, jam
//     ORDER BY tanggal ASC, jumlah_order DESC, total_produk_terjual DESC, jam ASC;
//   ''';

//     final result = await db.rawQuery(query);

//     // Hitung total order per tanggal (untuk ranking 10 tanggal teratas)
//     Map<String, int> orderPerTanggal = {};
//     for (var row in result) {
//       final tgl = row['tanggal'] as String;
//       final count = row['jumlah_order'] is int
//           ? row['jumlah_order'] as int
//           : int.parse(row['jumlah_order'].toString());
//       orderPerTanggal[tgl] = (orderPerTanggal[tgl] ?? 0) + count;
//     }

//     // Ambil hanya 10 tanggal dengan order terbanyak
//     final topDates = orderPerTanggal.entries.toList()
//       ..sort((a, b) => b.value.compareTo(a.value)); // descending
//     final allowedDates = topDates.take(10).map((entry) => entry.key).toSet();

//     // Filter hanya tanggal yang masuk top 10
//     final filtered = result.where(
//       (row) => allowedDates.contains(row['tanggal']),
//     );

//     return filtered.map((e) {
//       return OrderSummaryModel(
//         hari: e['tanggal'] as String, // pakai field hari untuk tanggal
//         jumlahOrder: e['jumlah_order'] is int
//             ? e['jumlah_order'] as int
//             : int.parse(e['jumlah_order'].toString()),
//         totalProduk: e['total_produk_terjual'] is int
//             ? e['total_produk_terjual'] as int
//             : int.parse(e['total_produk_terjual'].toString()),
//         jam: e['jam'] as String,
//       );
//     }).toList();
//   }

//   Future<List<OrderSummaryModel>> getTopOrderSummary(
//     String periode, {
//     String groupByMode = "day", // "day" atau "date"
//   }) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "DATE(o.transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "last_week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', '-7 days', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', '-7 days', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "strftime('%m', o.transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "all":
//         whereClause = "";
//         break;
//     }

//     final db = await database;

//     String query = "";
//     if (groupByMode == "day") {
//       // --- Group per hari (Ahad - Sabtu) ---
//       query =
//           '''
//       SELECT 
//         CASE CAST(strftime('%w', o.transaction_time) AS INTEGER)
//           WHEN 0 THEN 'Ahad'
//           WHEN 1 THEN 'Senin'
//           WHEN 2 THEN 'Selasa'
//           WHEN 3 THEN 'Rabu'
//           WHEN 4 THEN 'Kamis'
//           WHEN 5 THEN 'Jumat'
//           WHEN 6 THEN 'Sabtu'
//         END AS group_name,
//         strftime('%H', o.transaction_time) AS jam,
//         COUNT(DISTINCT o.id) AS jumlah_order,
//         SUM(oi.quantity) AS total_produk_terjual
//       FROM $tableOrders o
//       JOIN $tableOrderItems oi ON o.id = oi.id_order
//       ${whereClause.isNotEmpty ? "WHERE $whereClause" : ""}
//       GROUP BY group_name, jam
//       ORDER BY group_name ASC, jumlah_order DESC, total_produk_terjual DESC, jam ASC;
//     ''';
//     } else {
//       // --- Group per tanggal ---
//       query =
//           '''
//       SELECT 
//         DATE(o.transaction_time) AS group_name,
//         strftime('%H', o.transaction_time) AS jam,
//         COUNT(DISTINCT o.id) AS jumlah_order,
//         SUM(oi.quantity) AS total_produk_terjual
//       FROM $tableOrders o
//       JOIN $tableOrderItems oi ON o.id = oi.id_order
//       ${whereClause.isNotEmpty ? "WHERE $whereClause" : ""}
//       GROUP BY group_name, jam
//       ORDER BY group_name ASC, jumlah_order DESC, total_produk_terjual DESC, jam ASC;
//     ''';
//     }
//     // strftime('%d-%m-%Y', o.transaction_time) AS group_name,

//     final result = await db.rawQuery(query);

//     if (groupByMode == "day") {
//       // Ambil top 5 jam per hari
//       Map<String, List<Map<String, dynamic>>> grouped = {};
//       for (var row in result) {
//         final day = row['group_name'] as String;
//         grouped.putIfAbsent(day, () => []);
//         if (grouped[day]!.length < 5) {
//           grouped[day]!.add(row);
//         }
//       }

//       List<Map<String, dynamic>> finalResult = [];
//       grouped.forEach((_, rows) => finalResult.addAll(rows));

//       return finalResult.map((e) {
//         return OrderSummaryModel(
//           hari: e['group_name'] as String,
//           jumlahOrder: int.parse(e['jumlah_order'].toString()),
//           totalProduk: int.parse(e['total_produk_terjual'].toString()),
//           jam: e['jam'] as String,
//         );
//       }).toList();
//     } else {
//       // Ambil top 10 tanggal dengan order terbanyak
//       Map<String, int> orderPerTanggal = {};
//       for (var row in result) {
//         final tgl = row['group_name'] as String;
//         final count = int.parse(row['jumlah_order'].toString());
//         orderPerTanggal[tgl] = (orderPerTanggal[tgl] ?? 0) + count;
//       }

//       final topDates = orderPerTanggal.entries.toList()
//         ..sort((a, b) => b.value.compareTo(a.value));
//       final allowedDates = topDates.take(10).map((e) => e.key).toSet();

//       final filtered = result.where(
//         (row) => allowedDates.contains(row['group_name']),
//       );

//       return filtered.map((e) {
//         return OrderSummaryModel(
//           hari: e['group_name'] as String, // diisi tanggal
//           jumlahOrder: int.parse(e['jumlah_order'].toString()),
//           totalProduk: int.parse(e['total_produk_terjual'].toString()),
//           jam: e['jam'] as String,
//         );
//       }).toList();
//     }
//   }

//   Future<List<Map<String, dynamic>>> getOmzetByDate(
//     DateTime startDate,
//     DateTime endDate,
//   ) async {
//     final db = await instance.database;
//     final dateFormatter = DateFormat('yyyy-MM-dd');
//     final formattedStartDate = dateFormatter.format(startDate);
//     final formattedEndDate = dateFormatter.format(endDate);

//     String query =
//         '''
//       SELECT 
//         COUNT(*) as total_orders,
//         SUM(total_item) as total_items,
//         SUM(nominal) as total_omzet,
//         SUM(total_hpp) as total_hpp
//       FROM $tableOrders
//       WHERE DATE(transaction_time) BETWEEN ? AND ?;
//     ''';
//     return await db.rawQuery(query, [formattedStartDate, formattedEndDate]);
//   }

//   Future<List<OrderSummaryModel>> getOmzetSummary() async {
//     final db = await database;

//     String query =
//         '''
//     WITH RECURSIVE last_days(day) AS (
//       SELECT DATE('now', 'localtime')
//       UNION ALL
//       SELECT DATE(day, '-1 day')
//       FROM last_days
//       WHERE day > DATE('now', '-6 days', 'localtime')
//     )
//     SELECT 
//       ld.day AS tanggal,
//       COALESCE(COUNT(DISTINCT o.id), 0) AS jumlah_order,
//       COALESCE(SUM(oi.quantity * oi.price), 0) AS total_omzet
//     FROM last_days ld
//     LEFT JOIN $tableOrders o 
//       ON DATE(o.transaction_time) = ld.day
//     LEFT JOIN $tableOrderItems oi 
//       ON oi.id_order = o.id
//     GROUP BY ld.day
//     ORDER BY ld.day DESC;
//   ''';

//     final result = await db.rawQuery(query);

//     return result.map((e) {
//       return OrderSummaryModel(
//         hari: e['tanggal'] as String, // ini masih dalam format YYYY-MM-DD
//         jumlahOrder: e['jumlah_order'] is int
//             ? e['jumlah_order'] as int
//             : int.parse(e['jumlah_order'].toString()),
//         totalProduk: e['total_omzet'] is int
//             ? e['total_omzet'] as int
//             : int.parse(e['total_omzet'].toString()),
//         jam: '',
//       );
//     }).toList();
//   }

//   Future<List<OrderSummaryModel>> getOmzetByDaySummary(String periode) async {
//     String whereClause = "";

//     switch (periode) {
//       case "today":
//         whereClause = "DATE(o.transaction_time) = DATE('now', 'localtime')";
//         break;
//       case "week":
//         whereClause =
//             "strftime('%W', o.transaction_time) = strftime('%W', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "month":
//         whereClause =
//             "strftime('%m', o.transaction_time) = strftime('%m', 'now', 'localtime') "
//             "AND strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//       case "year":
//         whereClause =
//             "strftime('%Y', o.transaction_time) = strftime('%Y', 'now', 'localtime')";
//         break;
//     }
//     final db = await database;

//     String query =
//         '''
//     WITH days AS (
//       SELECT '1' AS w, 'Senin' AS hari, 1 AS sort_order UNION ALL
//       SELECT '2', 'Selasa', 2 UNION ALL
//       SELECT '3', 'Rabu', 3 UNION ALL
//       SELECT '4', 'Kamis', 4 UNION ALL
//       SELECT '5', 'Jumat', 5 UNION ALL
//       SELECT '6', 'Sabtu', 6 UNION ALL
//       SELECT '0', 'Ahad', 7
//     )
//     SELECT 
//       d.hari, 
//       COALESCE(COUNT(DISTINCT o.id), 0) AS jumlah_order,
//       COALESCE(SUM(oi.quantity * oi.price), 0) AS total_produk_terjual
//     FROM days d
//     LEFT JOIN $tableOrders o 
//       ON strftime('%w', o.transaction_time) = d.w
//       AND $whereClause
//     LEFT JOIN $tableOrderItems oi ON oi.id_order = o.id
//     GROUP BY d.w, d.hari, d.sort_order
//     ORDER BY d.sort_order;
//   ''';

//     final result = await db.rawQuery(query);

//     return result.map((e) {
//       return OrderSummaryModel(
//         hari: e['hari'] as String,
//         jumlahOrder: e['jumlah_order'] is int
//             ? e['jumlah_order'] as int
//             : int.parse(e['jumlah_order'].toString()),
//         totalProduk: e['total_produk_terjual'] is int
//             ? e['total_produk_terjual'] as int
//             : int.parse(e['total_produk_terjual'].toString()),
//         jam: '',
//       );
//     }).toList();
//   }

//   Future<int> insertKas(Map<String, dynamic> data) async {
//     final db = await instance.database;
//     // cari type category
//     data['type'] = await db
//         .query(
//           tableCashflowCategories,
//           columns: ['type'],
//           where: 'id = ?',
//           whereArgs: [data['category_id']],
//         )
//         .then((value) => value.first['type']);
//     return await db.insert(tableCashflows, data);
//   }

//   Future<List<Map<String, dynamic>>> getAllKas({
//     DateTime? startDate,
//     DateTime? endDate,
//     String? paymentMethod,
//   }) async {
//     final db = await instance.database;
//     // final db = await database;
//     String query =
//         'SELECT cf.*, o.keterangan, o.payment_method FROM $tableCashflows cf LEFT JOIN $tableOrders o ON o.id = cf.id_order';
//     List<dynamic> arguments = [];

//     if (startDate != null && endDate != null) {
//       if (paymentMethod == 'all') {
//         query += ' WHERE cf.tanggal BETWEEN ? AND ?';
//         arguments.add(DateFormat('yyyy-MM-dd').format(startDate));
//         arguments.add(DateFormat('yyyy-MM-dd').format(endDate));
//       } else {
//         query += ' WHERE o.payment_method = ? AND cf.tanggal BETWEEN ? AND ?';
//         arguments.add(paymentMethod);
//         arguments.add(DateFormat('yyyy-MM-dd').format(startDate));
//         arguments.add(DateFormat('yyyy-MM-dd').format(endDate));
//       }
//     }

//     query += ' ORDER BY cf.tanggal DESC, cf.id DESC';

//     return await db.rawQuery(query, arguments);

//     // return await db.query(tableCashflows, orderBy: 'id DESC');
//   }

//   Future<double> getTotal(
//     String type, {
//     DateTime? startDate,
//     DateTime? endDate,
//     String? paymentMethod,
//   }) async {
//     final db = await instance.database;
//     String query =
//         'SELECT SUM(cf.jumlah) as total FROM $tableCashflows cf LEFT JOIN $tableOrders o ON o.id = cf.id_order';
//     List<dynamic> arguments = [];

//     query += ' WHERE cf.type = ?';
//     paymentMethod == 'all' ? '' : query += ' AND o.payment_method = ?';
//     arguments.add(type);
//     if (startDate != null && endDate != null) {
//       query += ' AND cf.tanggal BETWEEN ? AND ?';
//       if (paymentMethod == 'all') {
//         arguments.add(DateFormat('yyyy-MM-dd').format(startDate));
//         arguments.add(DateFormat('yyyy-MM-dd').format(endDate));
//       } else {
//         arguments.add(paymentMethod);
//         arguments.add(DateFormat('yyyy-MM-dd').format(startDate));
//         arguments.add(DateFormat('yyyy-MM-dd').format(endDate));
//       }
//     }

//     final result = await db.rawQuery(query, arguments);
//     return result.first['total'] == null ? 0 : result.first['total'] as double;
//   }

//   Future<void> updateKas(int id, Map<String, dynamic> kasData) async {
//     final db = await database;
//     await db.update(tableCashflows, kasData, where: 'id = ?', whereArgs: [id]);
//   }

//   Future<void> deleteKas(int id) async {
//     final db = await database;
//     await db.delete(tableCashflows, where: 'id = ?', whereArgs: [id]);
//   }

//   Future<void> closingKasHarian(
//     double saldoFisik,
//     String shift,
//     int userId,
//     String? catatan,
//   ) async {
//     final db = await database;
//     final today = DateFormat('yyyy-MM-dd').format(DateTime.now());
//     db.rawDelete(
//       "DELETE FROM $tableCashClosings WHERE tanggal = ? AND shift = ?",
//       [today, shift],
//     );
//     final result = await db.rawQuery(
//       '''
//       SELECT 
//         SUM(CASE WHEN cf.type = 'income' THEN jumlah ELSE 0 END) AS total_income,
//         SUM(CASE WHEN cf.type = 'expense' THEN jumlah ELSE 0 END) AS total_expense
//       FROM $tableCashflows cf LEFT JOIN $tableOrders o ON o.id = cf.id_order
//       WHERE cf.tanggal = ? AND o.payment_method = 'Tunai'
//     ''',
//       [today],
//     );

//     final data = result.first;
//     final pemasukan = (data['total_income'] as num?)?.toDouble() ?? 0.0;
//     final pengeluaran = (data['total_expense'] as num?)?.toDouble() ?? 0.0;
//     final saldoSistem = pemasukan - pengeluaran;

//     final selisih = saldoFisik - saldoSistem;

//     await db.insert(tableCashClosings, {
//       'tanggal': today,
//       'shift': shift,
//       'user_id': userId,
//       'total_pemasukan': pemasukan,
//       'total_pengeluaran': pengeluaran,
//       'saldo_sistem': saldoSistem,
//       'saldo_fisik': saldoFisik,
//       'selisih': selisih,
//       'catatan': catatan ?? '',
//       'created_at': DateTime.now().toIso8601String(),
//     });
//   }

//   Future<bool> isKasClosed(String shift, int userId) async {
//     final db = await database;
//     final today = DateFormat('yyyy-MM-dd').format(DateTime.now());

//     final result = await db.rawQuery(
//       'SELECT COUNT(*) as total FROM $tableCashClosings WHERE tanggal = ? AND shift = ? AND user_id = ?',
//       [today, shift, userId],
//     );

//     final count = Sqflite.firstIntValue(result) ?? 0;
//     return count > 0;
//   }

//   Future<List<Map<String, dynamic>>> getAllClosingKas({
//     DateTime? startDate,
//     DateTime? endDate,
//   }) async {
//     final db = await database;
//     String query = 'SELECT * FROM $tableCashClosings ';
//     List<dynamic> arguments = [];

//     if (startDate != null && endDate != null) {
//       query += ' WHERE tanggal BETWEEN ? AND ?';
//       arguments.add(DateFormat('yyyy-MM-dd').format(startDate));
//       arguments.add(DateFormat('yyyy-MM-dd').format(endDate));
//     }

//     query += ' ORDER BY tanggal DESC, created_at DESC';

//     return await db.rawQuery(query, arguments);
//   }

//   // get all cash category
//   Future<List<CashCategoryLocalModel>> getAllCashCategoryHome() async {
//     final db = await instance.database;
//     final result = await db.query(tableCashflowCategories);
//     return result.map((e) => CashCategoryLocalModel.fromMap(e)).toList();
//   }

//   Future<List<CashCategoryLocalModel>> getAllCashCategory() async {
//     final db = await instance.database;
//     final result = await db.query('$tableCashflowCategories WHERE id > 2');
//     return result.map((e) => CashCategoryLocalModel.fromMap(e)).toList();
//   }

//   Future<int> insertCashCategory(CashCategoryLocalModel cashCategory) async {
//     final db = await instance.database;
//     int id = await db.insert(
//       tableCashflowCategories,
//       cashCategory.toMapForLocal(),
//     );
//     return id;
//   }

//   Future<int> updateCashCategory(CashCategoryLocalModel cashCategory) async {
//     final db = await instance.database;
//     return await db.update(
//       tableCashflowCategories,
//       cashCategory.toMap(),
//       where: 'id = ?',
//       whereArgs: [cashCategory.id],
//     );
//   }

//   Future<int> deleteCashCategoryById(int id) async {
//     final db = await instance.database;
//     final List<Map<String, dynamic>> result = await db.query(
//       tableCashflows,
//       where: 'category_id = ?',
//       whereArgs: [id],
//     );
//     if (result.isNotEmpty) {
//       return -1;
//     }
//     return await db.update(
//       tableCashflowCategories,
//       {
//         'deleted_at': DateTime.now().toIso8601String(),
//         'updated_at': DateTime.now().toIso8601String(),
//         'is_synced': 0,
//       },
//       where: 'id = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<File> exportDB() async {
//     final dbPath = await getDatabasesPath();
//     final srcPath = join(dbPath, "kasirlapak.db");
//     await _database?.close();
//     _database = null;
//     final dir = await getApplicationDocumentsDirectory();
//     final ts = DateTime.now().toIso8601String().replaceAll(':', '-');
//     final backup = File('${dir.path}/kasirlapak_backup_$ts.db');
//     if (await backup.exists()) await backup.delete();
//     await File(srcPath).copy(backup.path);
//     // _database = await _initDB('kasirlapak.db');
//     return backup;
//   }

//   Future<void> importDB(String pickedFilePath) async {
//     final dbPath = await getDatabasesPath();
//     final srcPath = join(dbPath, "kasirlapak.db");
//     await _database?.close();
//     _database = null;
//     final sourceFile = File(pickedFilePath);
//     if (!await sourceFile.exists()) throw Exception('File not found');
//     await sourceFile.copy(srcPath);
//     // _database = await _initDB('kasirlapak.db');
//   }

//   Future<void> saveResiData(Map<String, dynamic> data) async {
//     final db = await instance.database;
//     await db.insert(tableExpeditions, data);
//   }

//   Future<void> updateResiData(Map<String, dynamic> data, dataResi) async {
//     final db = await instance.database;
//     await db.update(
//       tableExpeditions,
//       data,
//       where: "id = ?",
//       whereArgs: [dataResi],
//     );
//   }

//   Future<List<ResiModel>> getResiDetail(int orderId) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableExpeditions,
//       where: 'order_id = ?',
//       whereArgs: [orderId],
//     );

//     return result.map((e) => ResiModel.fromMap(e)).toList();
//   }

//   Future<List<OrderModel>> getAllOrderbyInvoice(String keyword) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableOrders,
//       where: 'is_bayar = 1 AND (invoice LIKE ? OR customer LIKE ?)',
//       whereArgs: ['%$keyword%', '%$keyword%'],
//       limit: 20,
//       orderBy: 'id DESC',
//     );
//     return result.map((e) => OrderModel.fromLocalMap(e)).toList();
//   }

//   Future<List<LabelProductModel>> getAllProductbyName(String keyword) async {
//     final db = await instance.database;
//     final result = await db.query(
//       tableProducts,
//       where:
//           '(name LIKE ? OR product_code LIKE ?) AND user_id = $idUser AND deleted_at IS NULL',
//       whereArgs: ['%$keyword%', '%$keyword%'],
//       limit: 20,
//       orderBy: 'id DESC',
//     );
//     return result.map((e) => LabelProductModel.fromMap(e)).toList();
//   }
// }
