// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:intl/intl.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:webview_skops/core/components/spaces.dart';
// import 'package:webview_skops/core/extensions/int_ext.dart';
// import 'dart:io';
// import 'package:share_plus/share_plus.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../core/assets/assets.gen.dart';
// import '../../core/components/buttons.dart';
// import '../../presentation/home/models/history_order_item.dart';

// class HistoryPrintNota {
//   final GlobalKey _globalKey = GlobalKey();

//   Future<File?> getImageFromFile() async {
//     final prefs = await SharedPreferences.getInstance();
//     final savedImagePath = prefs.getString('saved_logo_path');

//     if (savedImagePath != null) {
//       final file = File(savedImagePath);
//       if (await file.exists()) {
//         return file;
//       }
//     }
//     return null;
//   }

//   Future<void> printNota(
//     BuildContext context,
//     List<HistoryOrderItem> products,
//     int id,
//     String invoice,
//     String tgl,
//     int totalQuantity,
//     int totalPrice,
//     String paymentMethod,
//     int nominalBayar,
//     String namaKasir,
//     String customer,
//     String namaUsaha,
//     String tagline,
//     String alamat,
//     String ucapanPenutup,
//     String? keterangan,
//   ) async {
//     final angkaFormatter = NumberFormat.currency(
//       locale: 'id',
//       symbol: '',
//       decimalDigits: 0,
//     );
//     File? imageFile = await getImageFromFile();
//     final inv = invoice == "" ? '#$id' : invoice;

//     Widget buildPesan(String namaUsaha) {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 1.0),
//             child: imageFile != null
//                 ? Image.file(imageFile, height: 80)
//                 : Image.asset(Assets.images.logo.path, width: 80, height: 80),
//           ),
//           Text(
//             namaUsaha,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             tagline,
//             style: const TextStyle(
//               fontStyle: FontStyle.italic,
//               color: Colors.black54,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             alamat,
//             style: const TextStyle(color: Colors.black),
//             textAlign: TextAlign.center,
//           ),
//           const SpaceHeight(16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 customer,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.normal,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               Text(
//                 inv,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.normal,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Kasir: $namaKasir", style: const TextStyle(fontSize: 12)),
//               Expanded(
//                 child: Text(
//                   DateFormat('dd-MM-yyyy HH:mm').format(DateTime.parse(tgl)),
//                   style: const TextStyle(fontSize: 12),
//                   textAlign: TextAlign.right,
//                 ),
//               ),
//             ],
//           ),
//           // membuat garis
//           const Divider(thickness: 1.0, color: Colors.black),
//           for (final product in products)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   product.product.name,
//                   // textAlign: TextAlign.start,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "${product.quantity} x ${product.itemPrice.periodFormat}",
//                     ),
//                     Text(
//                       "= ${(product.quantity * product.itemPrice).periodFormat}",
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           // membuat garis
//           const Divider(thickness: 1.0, color: Colors.black),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [Text("Jumlah Item: $totalQuantity")],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               const Text(
//                 "TOTAL",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 angkaFormatter.format(totalPrice),
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//                 // textAlign: TextAlign.right,
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Bayar ($paymentMethod)"),
//               Text(angkaFormatter.format(nominalBayar)),
//             ],
//           ),
//           paymentMethod != 'Tunai'
//               ? const SizedBox.shrink()
//               : Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text("Kembali"),
//                     Text(angkaFormatter.format(nominalBayar - totalPrice)),
//                   ],
//                 ),
//           // membuat garis
//           keterangan == null || keterangan == ""
//               ? const SizedBox.shrink()
//               : const Divider(thickness: 1.0, color: Colors.grey),
//           keterangan == null || keterangan == ""
//               ? const SizedBox.shrink()
//               : Row(
//                   children: [
//                     Text(
//                       'Catatan: ',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.left,
//                     ),
//                   ],
//                 ),
//           keterangan == null || keterangan == ""
//               ? const SizedBox.shrink()
//               : Container(
//                   padding: const EdgeInsets.all(0),
//                   child: Row(
//                     children: [
//                       Text(
//                         keterangan,
//                         style: const TextStyle(fontSize: 12),
//                         textAlign: TextAlign.start,
//                       ),
//                     ],
//                   ),
//                 ),
//           const SpaceHeight(16),
//           Container(
//             // decoration: BoxDecoration(
//             //   border: Border.all(color: Colors.white, width: 0),
//             //   borderRadius: BorderRadius.circular(8.0),
//             // ),
//             padding: const EdgeInsets.all(4.0),
//             child: Text(ucapanPenutup, textAlign: TextAlign.center),
//           ),
//         ],
//       );
//     }

//     await showDialog(
//       // ignore: use_build_context_synchronously
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: SingleChildScrollView(
//             child: RepaintBoundary(
//               key: _globalKey,
//               child: Container(
//                 color: Colors.white,
//                 padding: const EdgeInsets.all(8),
//                 child: buildPesan(namaUsaha),
//               ),
//             ),
//           ),
//           actions: [
//             Button.outlined(
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 await _captureAndSharePng(context);
//               },
//               label: 'Bagikan',
//               icon: const Icon(Icons.share, size: 24),
//               fontSize: 12,
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> _captureAndSharePng(BuildContext context) async {
//     try {
//       RenderRepaintBoundary boundary =
//           _globalKey.currentContext!.findRenderObject()
//               as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData = await image.toByteData(
//         format: ui.ImageByteFormat.png,
//       );
//       if (byteData != null) {
//         final buffer = byteData.buffer;
//         String dir = (await getTemporaryDirectory()).path;
//         File imgFile = File('$dir/nota_image.png');
//         await imgFile.writeAsBytes(buffer.asUint8List());

//         await Share.shareXFiles([XFile(imgFile.path)], text: "Nota Anda");
//       }
//     } catch (e) {
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             "Terjadi kesalahan saat proses konversi menjadi gambar.",
//           ),
//         ),
//       );
//     }
//   }
// }
