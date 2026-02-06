// import 'package:webview_skops/core/constants/auth_service.dart';
// import 'package:webview_skops/data/models/response/product_response_model.dart';
// import 'package:path/path.dart';
// // import 'package:sqflite/sqflite.dart';
// import 'package:uuid/uuid.dart';
// import '../models/cash_category_model.dart';
// import '../models/category_model.dart';
// import '../models/satuan_model.dart';

// class CategoryLocalDatasource {
//   static final CategoryLocalDatasource instance =
//       CategoryLocalDatasource._init();
//   final String tableProfile = 'profile';
//   final String tableProducts = 'products';
//   final String tableOrders = 'orders';
//   final String tableOrderItems = 'order_items';
//   final String tableCategories = 'categories';
//   final String tableSatuans = 'product_units';
//   final String tableCashflows = 'cashflows';
//   final String tableCashflowCategories = 'cashflow_categories';
//   final String tableCashClosings = 'cash_closing';

//   final idUser = AuthService().userID;

//   static Database? _database;

//   CategoryLocalDatasource._init();

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     // final path = dbPath + filePath;
//     final path = join(dbPath, filePath);
//     return await openDatabase(path);
//   }

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDB('kasirlapak_$idUser.db');
//     return _database!;
//   }

//   // Future<int> insertCategory(CategoryModel category) async {
//   //   final db = await instance.database;
//   //   return await db.insert(tableCategories, category.toMap());
//   // }

//   Future<void> insertOrUpdate(CategoryModel category) async {
//     final db = await instance.database;

//     final existing = await db.query(
//       tableCategories,
//       where: 'uuid = ?',
//       whereArgs: [category.uuid],
//     );

//     if (existing.isNotEmpty) {
//       await db.update(
//         tableCategories,
//         category.toMap(),
//         where: 'uuid = ?',
//         whereArgs: [category.uuid],
//       );
//     } else {
//       await db.insert(tableCategories, category.toMap());
//     }
//   }

//   // Future<void> deleteItemCategory(int id) async {
//   //   final db = await database;
//   //   await db.update(
//   //     tableCategories,
//   //     {
//   //       'deleted_at': DateTime.now().toIso8601String(),
//   //       'updated_at': DateTime.now().toIso8601String(),
//   //       'is_synced': 0
//   //     },
//   //     where: 'id = ?',
//   //     whereArgs: [id],
//   //   );
//   // }

//   Future<List<CategoryModel>> getUnsyncedCategories() async {
//     final db = await instance.database;
//     await db.update(tableCategories, {'is_synced': 0});
//     final rows = await db.query(
//       tableCategories,
//       where: 'uuid IS NULL OR uuid = ""',
//     );

//     for (final row in rows) {
//       final newUuid = const Uuid().v4();
//       await db.update(
//         tableCategories,
//         {
//           'uuid': newUuid,
//           'is_synced': 0,
//           'updated_at': DateTime.now().toIso8601String(),
//         },
//         where: 'id = ?',
//         whereArgs: [row['id']],
//       );
//     }
//     await db.update(tableCategories, {'user_id': idUser});

//     // Ambil kembali semua data yang belum disinkron
//     final result = await db.query(
//       tableCategories,
//       where: 'is_synced = ?',
//       whereArgs: [0],
//     );

//     return result.map((e) => CategoryModel.fromMap(e)).toList();
//   }

//   Future<void> markAsSynced(String uuid) async {
//     final db = await instance.database;
//     await db.update(
//       tableCategories,
//       {'is_synced': 1},
//       where: 'uuid = ?',
//       whereArgs: [uuid],
//     );
//   }

//   Future<void> insertOrUpdateSatuan(SatuanModel satuan) async {
//     final db = await instance.database;

//     final existing = await db.query(
//       tableSatuans,
//       where: 'uuid = ?',
//       whereArgs: [satuan.uuid],
//     );

//     if (existing.isNotEmpty) {
//       await db.update(
//         tableSatuans,
//         satuan.toMap(),
//         where: 'uuid = ?',
//         whereArgs: [satuan.uuid],
//       );
//     } else {
//       await db.insert(tableSatuans, satuan.toMap());
//     }
//   }

//   Future<List<SatuanModel>> getUnsyncedSatuan() async {
//     final db = await instance.database;
//     // await db.update(tableSatuans, {'is_synced': 0});
//     final rows = await db.query(
//       tableSatuans,
//       where: 'uuid IS NULL OR uuid = ""',
//     );

//     for (final row in rows) {
//       final newUuid = const Uuid().v4();
//       await db.update(
//         tableSatuans,
//         {
//           'uuid': newUuid,
//           'is_synced': 0,
//           'updated_at': DateTime.now().toIso8601String(),
//         },
//         where: 'id = ?',
//         whereArgs: [row['id']],
//       );
//     }
//     await db.update(tableSatuans, {'user_id': idUser});

//     final result = await db.query(
//       tableSatuans,
//       where: 'is_synced = ?',
//       whereArgs: [0],
//     );

//     return result.map((e) => SatuanModel.fromMap(e)).toList();
//   }

//   Future<void> markAsSyncedSatuan(String uuid) async {
//     final db = await instance.database;
//     await db.update(
//       tableSatuans,
//       {'is_synced': 1},
//       where: 'uuid = ?',
//       whereArgs: [uuid],
//     );
//   }

//   Future<void> insertOrUpdateCashCategory(
//     CashCategoryModel cashCategory,
//   ) async {
//     final db = await instance.database;

//     final existing = await db.query(
//       tableCashflowCategories,
//       where: 'uuid = ?',
//       whereArgs: [cashCategory.uuid],
//     );

//     if (existing.isNotEmpty) {
//       await db.update(
//         tableCashflowCategories,
//         cashCategory.toMap(),
//         where: 'uuid = ?',
//         whereArgs: [cashCategory.uuid],
//       );
//     } else {
//       await db.insert(tableCashflowCategories, cashCategory.toMap());
//     }
//   }

//   Future<List<CashCategoryModel>> getUnsyncedCashCategory() async {
//     final db = await instance.database;
//     // await db.update(tableCashflowCategories, {'is_synced': 0});
//     final rows = await db.query(
//       tableCashflowCategories,
//       where: 'uuid IS NULL OR uuid = ""',
//     );

//     for (final row in rows) {
//       final newUuid = const Uuid().v4();
//       await db.update(
//         tableCashflowCategories,
//         {
//           'uuid': newUuid,
//           'is_synced': 0,
//           'updated_at': DateTime.now().toIso8601String(),
//         },
//         where: 'id = ?',
//         whereArgs: [row['id']],
//       );
//     }
//     await db.update(tableCashflowCategories, {'user_id': idUser});

//     final result = await db.query(
//       tableCashflowCategories,
//       where: 'is_synced = ?',
//       whereArgs: [0],
//     );
//     return result.map((e) => CashCategoryModel.fromMap(e)).toList();
//   }

//   Future<void> markAsSyncedCashCategory(String uuid) async {
//     final db = await instance.database;
//     await db.update(
//       tableCashflowCategories,
//       {'is_synced': 1},
//       where: 'uuid = ?',
//       whereArgs: [uuid],
//     );
//   }

//   Future<List<Product>> getUnsyncedProducts() async {
//     final db = await instance.database;
//     // await db.update(tableProducts, {'is_sync': 0});
//     final rows = await db.query(
//       tableProducts,
//       where: 'uuid IS NULL OR uuid = ""',
//     );

//     for (final row in rows) {
//       final newUuid = const Uuid().v4();
//       await db.update(
//         tableProducts,
//         {
//           'uuid': newUuid,
//           'is_sync': 0,
//           'updated_at': DateTime.now().toIso8601String(),
//         },
//         where: 'id = ?',
//         whereArgs: [row['id']],
//       );
//     }
//     await db.update(tableProducts, {'user_id': idUser});

//     final result = await db.query(
//       tableProducts,
//       where: 'is_sync = ?',
//       whereArgs: [0],
//     );
//     return result.map((e) => Product.fromMap(e)).toList();
//   }

//   Future<void> markAsSyncedProduct(String uuid) async {
//     final db = await instance.database;
//     await db.update(
//       tableProducts,
//       {'is_sync': 1},
//       where: 'uuid = ?',
//       whereArgs: [uuid],
//     );
//   }

//   Future<void> insertOrUpdateProduct(Product product) async {
//     final db = await instance.database;

//     final existing = await db.query(
//       tableProducts,
//       where: 'uuid = ?',
//       whereArgs: [product.uuid],
//     );

//     if (existing.isNotEmpty) {
//       await db.update(
//         tableProducts,
//         product.toMap(),
//         where: 'uuid = ?',
//         whereArgs: [product.uuid],
//       );
//     } else {
//       await db.insert(tableProducts, product.toMap());
//     }
//   }
// }
