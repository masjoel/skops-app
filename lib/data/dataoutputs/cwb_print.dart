// import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
// import 'package:webview_skops/core/extensions/int_ext.dart';
// import 'package:intl/intl.dart';

// import '../../presentation/home/models/order_item.dart';

// class CwbPrint {
//   CwbPrint._init();

//   static final CwbPrint instance = CwbPrint._init();

//   Future<List<int>> printOrder(
//     List<OrderItem> products,
//     int id,
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
//   ) async {
//     List<int> bytes = [];

//     final profile = await CapabilityProfile.load();
//     final generator = Generator(PaperSize.mm58, profile);

//     bytes += generator.reset();
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
//     // bytes += generator.text('Pesanan:',
//     //     styles: const PosStyles(bold: false, align: PosAlign.center));
//     bytes += generator.row([
//       PosColumn(
//         text: DateFormat('dd-MM-yyyy').format(DateTime.now()),
//         width: 8,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: DateFormat('HH:mm').format(DateTime.now()),
//         width: 4,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         // ignore: unnecessary_brace_in_string_interps
//         text: '#${id + 1}',
//         width: 6,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: namaKasir,
//         width: 6,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.text(
//       '--------------------------------',
//       styles: const PosStyles(bold: false, align: PosAlign.left),
//     );
//     //for from data
//     for (final product in products) {
//       bytes += generator.text(
//         product.product.name,
//         styles: const PosStyles(align: PosAlign.left),
//       );

//       bytes += generator.row([
//         PosColumn(
//           text: '${product.quantity} x ${product.product.price.periodFormat}',
//           width: 8,
//           styles: const PosStyles(align: PosAlign.left),
//         ),
//         PosColumn(
//           text: (product.quantity * product.product.price).periodFormat,
//           width: 4,
//           styles: const PosStyles(align: PosAlign.right),
//         ),
//       ]);
//     }

//     // bytes += generator.feed(1);
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
//         // ignore: unnecessary_brace_in_string_interps
//         text: 'Bayar (${paymentMethod})',
//         width: 6,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: nominalBayar.periodFormat,
//         width: 6,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);
//     bytes += generator.row([
//       PosColumn(
//         text: 'Kembali',
//         width: 6,
//         styles: const PosStyles(align: PosAlign.left),
//       ),
//       PosColumn(
//         text: (nominalBayar - totalPrice).periodFormat,
//         width: 6,
//         styles: const PosStyles(align: PosAlign.right),
//       ),
//     ]);

//     // bytes += generator.row([
//     //   PosColumn(
//     //     text: 'Pembayaran',
//     //     width: 8,
//     //     styles: const PosStyles(align: PosAlign.left),
//     //   ),
//     //   PosColumn(
//     //     text: paymentMethod,
//     //     width: 4,
//     //     styles: const PosStyles(align: PosAlign.right),
//     //   ),
//     // ]);

//     bytes += generator.feed(1);
//     bytes += generator.text(
//       ucapanPenutup,
//       styles: const PosStyles(bold: false, align: PosAlign.center),
//     );
//     bytes += generator.feed(2);

//     return bytes;
//   }
// }
