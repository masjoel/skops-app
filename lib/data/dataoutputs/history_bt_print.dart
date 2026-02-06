// import 'dart:typed_data';

// import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
// import 'package:image/image.dart';
// import 'package:webview_skops/core/extensions/int_ext.dart';
// import 'package:intl/intl.dart';

// import '../../presentation/home/models/history_order_item.dart';

// class HistoryBtPrint {
//   HistoryBtPrint._init();

//   static final HistoryBtPrint instance = HistoryBtPrint._init();

//   Future<List<int>> printOrder(
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
//     Uint8List? imageData,
//     String? keterangan,
//   ) async {
//     List<int> bytes = [];
//     final payment = paymentMethod == "Tunai" ? "Tunai" : "TRF";

//     final profile = await CapabilityProfile.load();
//     final generator = Generator(PaperSize.mm58, profile);

//     bytes += generator.reset();
//     // Konversi gambar menjadi format kompatibel
//     final img = decodeImage(imageData!);
//     if (img != null) {
//       // Calculate resize dimensions while maintaining aspect ratio
//       int targetWidth = img.width;
//       int targetHeight = img.height;

//       if (img.width > 120 || img.height > 120) {
//         double ratio = img.width / img.height;
//         if (ratio > 1) {
//           // Image is wider than tall
//           targetWidth = 120;
//           targetHeight = (120 / ratio).round();
//         } else {
//           // Image is taller than wide
//           targetHeight = 120;
//           targetWidth = (120 * ratio).round();
//         }
//       }

//       final resizedImg = copyResize(
//         img,
//         width: targetWidth,
//         height: targetHeight,
//       );
//       bytes += generator.image(resizedImg);
//     }
//     bytes += generator.text(
//       namaUsaha,
//       styles: const PosStyles(
//         bold: false,
//         align: PosAlign.center,
//         height: PosTextSize.size2,
//         width: PosTextSize.size1,
//       ),
//     );

//     bytes += generator.text(
//       tagline,
//       styles: const PosStyles(align: PosAlign.center),
//     );
//     bytes += generator.text(
//       alamat,
//       styles: const PosStyles(align: PosAlign.center),
//     );

//     bytes += generator.feed(1);

//     bytes += generator.row([
//       PosColumn(
//         text: customer,
//         width: 7,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: invoice,
//         width: 5,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         text: DateFormat('dd-MM-yyyy').format(DateTime.parse(tgl)),
//         width: 8,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: DateFormat('HH:mm').format(DateTime.parse(tgl)),
//         width: 4,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         text: 'Kasir: $namaKasir',
//         width: 12,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       // PosColumn(
//       //   text: namaKasir,
//       //   width: 7,
//       //   styles: const PosStyles(align: PosAlign.right),
//       // ),
//     ]);
//     bytes += generator.text(
//       '--------------------------------',
//       styles: const PosStyles(bold: false, align: PosAlign.left),
//     );

//     for (final product in products) {
//       bytes += generator.text(
//         product.product.name,
//         styles: const PosStyles(align: PosAlign.left),
//       );

//       bytes += generator.row([
//         PosColumn(
//           text: '${product.quantity} x ${product.itemPrice.periodFormat}',
//           width: 8,
//           styles: const PosStyles(align: PosAlign.left),
//         ),
//         PosColumn(
//           text: (product.quantity * product.itemPrice).periodFormat,
//           width: 4,
//           styles: const PosStyles(align: PosAlign.right),
//         ),
//       ]);
//     }

//     bytes += generator.text(
//       '--------------------------------',
//       styles: const PosStyles(bold: false, align: PosAlign.left),
//     );
//     bytes += generator.row([
//       PosColumn(
//         text: 'Jumlah Item: $totalQuantity',
//         width: 12,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         text: 'Total',
//         width: 6,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: totalPrice.periodFormat,
//         width: 6,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         text: 'Bayar ($payment)',
//         width: 6,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: nominalBayar.periodFormat,
//         width: 6,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     if (payment == "Tunai") {
//       bytes += generator.row([
//         PosColumn(
//           text: 'Kembali',
//           width: 6,
//           styles: const PosStyles(align: PosAlign.left),
//         ),
//         PosColumn(
//           text: (nominalBayar - totalPrice).periodFormat,
//           width: 6,
//           styles: const PosStyles(align: PosAlign.right),
//         ),
//       ]);
//     }

//     if (keterangan != null && keterangan != "") {
//       bytes += generator.feed(1);
//       bytes += generator.text(
//         'Catatan:',
//         styles: const PosStyles(bold: false, align: PosAlign.left),
//       );
//       bytes += generator.text(
//         keterangan,
//         styles: const PosStyles(bold: false, align: PosAlign.left),
//       );
//     }
//     bytes += generator.feed(1);
//     bytes += generator.text(
//       ucapanPenutup,
//       styles: const PosStyles(bold: false, align: PosAlign.center),
//     );
//     bytes += generator.feed(2);

//     return bytes;
//   }
// }
