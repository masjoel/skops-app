// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:webview_skops/core/extensions/int_ext.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../../presentation/home/models/history_order_item.dart';

// class HistoryWaNota {
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

//     String pesan = "";

//     pesan += "*$namaUsaha*\n";
//     pesan += "$tagline\n";
//     pesan += "$alamat\n\n";
//     pesan += "$invoice - $customer\n";
//     pesan += "${DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now())}\n";
//     pesan += "Kasir: $namaKasir\n";
//     pesan += "======================\n";
//     for (final product in products) {
//       pesan += "${product.product.name}\n";
//       pesan +=
//           "${product.quantity} x ${product.product.price.periodFormat} = ${(product.quantity * product.product.price).periodFormat}\n";
//     }
//     pesan += "======================\n";
//     pesan += "Jumlah Item: ${angkaFormatter.format(totalQuantity)}\n";
//     pesan += "*TOTAL: ${angkaFormatter.format(totalPrice)}*\n";
//     pesan += "Bayar ($paymentMethod): ${angkaFormatter.format(nominalBayar)}\n";
//     if (paymentMethod == 'Tunai') {
//       pesan += "Kembali: ${angkaFormatter.format(nominalBayar - totalPrice)}\n";
//     }
//     if (keterangan != null && keterangan.isNotEmpty) {
//       pesan += ("------------------------------\n");
//       pesan += "Catatan:\n";
//       pesan += "$keterangan\n";
//     }
//     pesan += "\n";
//     pesan += "$ucapanPenutup\n";

//     // Create WhatsApp URL without phone number
//     final encodedPesan = Uri.encodeComponent(pesan);
//     final whatsappUrl = Uri.parse('whatsapp://send?text=$encodedPesan');

//     try {
//       await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Tidak dapat membuka WhatsApp'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }
// }
