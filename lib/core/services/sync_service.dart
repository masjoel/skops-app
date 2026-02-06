// import 'dart:convert';
// import 'dart:io';
// import 'package:webview_skops/data/models/response/product_response_model.dart';
// import 'package:mime/mime.dart';
// import 'package:http_parser/http_parser.dart';
// import 'package:http/http.dart' as http;
// import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
// import 'package:webview_skops/data/models/cash_category_model.dart';
// import 'package:webview_skops/data/models/satuan_model.dart';
// import '../../data/models/category_model.dart';
// import '../constants/variables.dart';
// import '../../data/datasources/category_local_datasource.dart';

// class SyncService {
//   final _local = CategoryLocalDatasource.instance;

//   final String baseUrl = '${Variables.baseUrl}/api';

//   Future<void> syncCategoryToServer() async {
//     final unsynced = await _local.getUnsyncedCategories();
//     if (unsynced.isEmpty) {
//       // tampilkan jam 2 digit dan menit 2 digit saat ini

//       print(
//         "✅ Tidak ada data lokal yang disinkronkan ke server.  ${DateTime.now().hour.toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}",
//       );
//       return;
//     }

//     final payload = {'categories': unsynced.map((c) => c.toMap()).toList()};

//     final response = await http.post(
//       Uri.parse('$baseUrl/sync/categories'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(payload),
//     );

//     if (response.statusCode == 200) {
//       for (var cat in unsynced) {
//         await _local.markAsSynced(cat.uuid);
//       }
//       print("✅ Data lokal berhasil dikirim ke server.");
//     } else {
//       print("❌ Gagal mengirim data ke server: ${response.body}");
//     }
//   }

//   Future<void> syncSatuanToServer() async {
//     final unsynced = await _local.getUnsyncedSatuan();

//     if (unsynced.isEmpty) {
//       return;
//     }

//     final payload = {'product_units': unsynced.map((c) => c.toMap()).toList()};

//     final response = await http.post(
//       Uri.parse('$baseUrl/sync/product_units'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(payload),
//     );

//     if (response.statusCode == 200) {
//       for (var cat in unsynced) {
//         await _local.markAsSyncedSatuan(cat.uuid);
//       }
//     } else {}
//   }

//   Future<void> syncCashCategoryToServer() async {
//     final unsynced = await _local.getUnsyncedCashCategory();

//     if (unsynced.isEmpty) {
//       // print("✅ Tidak ada data lokal yang perlu disinkronkan ke server.");
//       return;
//     }

//     final payload2 = {
//       'cash_categories': unsynced.map((c) => c.toMap()).toList(),
//     };

//     final response = await http.post(
//       Uri.parse('$baseUrl/sync/cash_categories'),
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(payload2),
//     );

//     if (response.statusCode == 200) {
//       for (var cc in unsynced) {
//         await _local.markAsSyncedCashCategory(cc.uuid);
//       }
//       // print("✅ Data lokal berhasil dikirim ke server.");
//     } else {
//       // print("❌ Gagal mengirim data ke server: ${response.body}");
//     }
//   }

//   Future<void> syncProductToServer() async {
//     final unsynced = await _local.getUnsyncedProducts();
//     if (unsynced.isEmpty) return;

//     final authData = await AuthLocalDatasource().getAuthData();
//     final uri = Uri.parse('$baseUrl/sync/products');
//     final request = http.MultipartRequest('POST', uri);

//     // set headers once
//     request.headers.addAll({
//       'Authorization': 'Bearer ${authData.token}',
//       'Accept': 'application/json',
//     });

//     for (var i = 0; i < unsynced.length; i++) {
//       final p = unsynced[i];
//       final map = p.toMap();
//       final imgPath = map.remove('image');

//       // add product fields as products[i][key]
//       map.forEach((key, value) {
//         final fieldName = 'products[$i][$key]';
//         request.fields[fieldName] = value == null ? '' : value.toString();
//       });

//       // attach image under products[i][image]
//       if (imgPath != null && imgPath is String && imgPath.isNotEmpty) {
//         final file = File(imgPath);
//         if (await file.exists()) {
//           final mimeType = lookupMimeType(file.path) ?? 'image/jpeg';
//           final parts = mimeType.split('/');
//           final multipartFile = await http.MultipartFile.fromPath(
//             'products[$i][image]',
//             file.path,
//             contentType: MediaType(parts[0], parts[1]),
//             filename: file.uri.pathSegments.last,
//           );
//           request.files.add(multipartFile);
//         }
//       }
//     }

//     // debug: print fields/files count
//     // print('fields: ${request.fields.keys.length}, files: ${request.files.length}');

//     final streamed = await request.send();
//     final response = await http.Response.fromStream(streamed);

//     if (response.statusCode == 200) {
//       for (var prod in unsynced) {
//         await _local.markAsSyncedProduct(prod.uuid);
//       }
//       print('✅ Data & gambar berhasil dikirim');
//     } else {
//       print('❌ Gagal kirim: ${response.statusCode} ${response.body}');
//     }
//   }

//   Future<void> fetchCategoriesFromServer() async {
//     final lastSync = await AuthLocalDatasource.getLastSync();
//     final queryParam = lastSync != null ? '?updated_after=$lastSync' : '';

//     final response = await http.get(
//       Uri.parse('$baseUrl/sync/categories$queryParam'),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List categories = data['categories'];

//       for (var cat in categories) {
//         final model = CategoryModel(
//           uuid: cat['uuid'],
//           // id: cat['id'],
//           userId: cat['user_id'],
//           name: cat['name'],
//           iconPath: cat['icon_path'],
//           isSynced: 1,
//           updatedAt: cat['updated_at'],
//           deletedAt: cat['deleted_at'],
//         );
//         await _local.insertOrUpdate(model);
//       }

//       final now = DateTime.now().toIso8601String();
//       await AuthLocalDatasource.setLastSync(now);
//     } else {}
//   }

//   Future<void> fetchSatuanFromServer() async {
//     final lastSync = await AuthLocalDatasource.getLastSync();
//     final queryParam = lastSync != null ? '?updated_after=$lastSync' : '';

//     final response = await http.get(
//       Uri.parse('$baseUrl/sync/product_units$queryParam'),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List productUnits = data['product_units'];

//       for (var pu in productUnits) {
//         final model = SatuanModel(
//           uuid: pu['uuid'],
//           // id: pu['id'],
//           userId: pu['user_id'],
//           name: pu['name'],
//           keterangan: pu['keterangan'],
//           isSynced: 1,
//           updatedAt: pu['updated_at'],
//           deletedAt: pu['deleted_at'],
//         );
//         await _local.insertOrUpdateSatuan(model);
//       }

//       final now = DateTime.now().toIso8601String();
//       await AuthLocalDatasource.setLastSync(now);
//     } else {}
//   }

//   Future<void> fetchCashCategoriesFromServer() async {
//     final lastSync = await AuthLocalDatasource.getLastSync();
//     final queryParam = lastSync != null ? '?updated_after=$lastSync' : '';

//     final response = await http.get(
//       Uri.parse('$baseUrl/sync/cash_categories$queryParam'),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List cashCategories = data['cash_categories'];

//       for (var cc in cashCategories) {
//         final model = CashCategoryModel(
//           uuid: cc['uuid'],
//           // id: cc['id'],
//           userId: cc['user_id'],
//           name: cc['name'],
//           type: cc['type'],
//           keterangan: cc['keterangan'],
//           isSynced: 1,
//           updatedAt: cc['updated_at'],
//           deletedAt: cc['deleted_at'],
//         );
//         await _local.insertOrUpdateCashCategory(model);
//       }

//       final now = DateTime.now().toIso8601String();
//       await AuthLocalDatasource.setLastSync(now);
//     } else {}
//   }

//   Future<void> fetchProductsFromServer() async {
//     final lastSync = await AuthLocalDatasource.getLastSync();
//     final queryParam = lastSync != null ? '?updated_after=$lastSync' : '';

//     final response = await http.get(
//       Uri.parse('$baseUrl/sync/products$queryParam'),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List product = data['products'];

//       for (var cc in product) {
//         final model = Product(
//           uuid: cc['uuid'],
//           // id: cc['id'],
//           userId: cc['user_id'],
//           productId: cc['product_id'],
//           name: cc['name'],
//           hpp: cc['hpp'],
//           price: cc['price'],
//           stock: cc['stock'],
//           category: cc['category'],
//           categoryId: cc['category_id'],
//           isBestSeller: cc['is_best_seller'] == 1 ? true : false,
//           satuan: cc['satuan'],
//           satuanId: cc['product_unit_id'],
//           discount: cc['discount'],
//           isDiscount: cc['is_discount'] == 1 ? true : false,
//           productCode: cc['product_code'],
//           isSynced: 1,
//           updatedAt: cc['updated_at'] == null || cc['updated_at'] == ''
//               ? null
//               : DateTime.parse(cc['updated_at'].toString()),
//           deletedAt: cc['deleted_at'],
//         );
//         await _local.insertOrUpdateProduct(model);
//       }

//       final now = DateTime.now().toIso8601String();
//       await AuthLocalDatasource.setLastSync(now);
//       print('Data berhasil diupdate!');
//     } else {
//       print('❌ Data gagal diupdate!');
//     }
//   }

//   // 🔄 Jalankan sinkronisasi dua arah
//   Future<void> syncTwoWay() async {
//     await syncCategoryToServer();
//     await fetchCategoriesFromServer();
//     await syncSatuanToServer();
//     await fetchSatuanFromServer();
//     await syncCashCategoryToServer();
//     await fetchCashCategoriesFromServer();
//   }

//   Future<void> syncTwoWays() async {
//     try {
//       await syncCategoryToServer();
//     } catch (e) {
//       print('❌ Error syncCategoryToServer: $e');
//     }

//     try {
//       await fetchCategoriesFromServer();
//     } catch (e) {
//       print('❌ Error fetchCategoriesFromServer: $e');
//     }

//     try {
//       await syncSatuanToServer();
//     } catch (e) {
//       print('❌ Error syncSatuanToServer: $e');
//     }

//     try {
//       await fetchSatuanFromServer();
//     } catch (e) {
//       print('❌ Error fetchSatuanFromServer: $e');
//     }

//     try {
//       await syncCashCategoryToServer();
//     } catch (e) {
//       print('❌ Error syncCashCategoryToServer: $e');
//     }

//     try {
//       await fetchCashCategoriesFromServer();
//     } catch (e) {
//       print('❌ Error fetchCashCategoriesFromServer: $e');
//     }
//   }

//   Future<void> syncTwoCategory() async {
//     await syncCategoryToServer();
//     await fetchCategoriesFromServer();
//   }

//   Future<void> syncTwoSatuan() async {
//     await syncSatuanToServer();
//     await fetchSatuanFromServer();
//   }

//   Future<void> syncTwoCashCategory() async {
//     await syncCashCategoryToServer();
//     await fetchCashCategoriesFromServer();
//   }

//   Future<void> syncTwoProduct() async {
//     await syncProductToServer();
//     await fetchProductsFromServer();
//   }
// }
