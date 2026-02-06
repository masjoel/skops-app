// import 'dart:io';
// import 'dart:typed_data';
// import 'package:intl/intl.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Future<File?> getImageFromFile() async {
//   final prefs = await SharedPreferences.getInstance();
//   String? fileName = prefs.getString('saved_logo_path');

//   if (fileName != null) {
//     final file = File(fileName);
//     if (await file.exists()) {
//       return file;
//     }
//   }
//   return null;
// }

// Future<void> exportReportsToPdf(
//     List<Map<String, dynamic>> result,
//     DateTime startDate,
//     DateTime endDate,
//     int vTotalOmzet,
//     int vTotalHpp) async {
//   final pdf = pw.Document();

//   final currencyFormatter =
//       NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0);
//   final angkaFormatter =
//       NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0);

//   final dateFormatTime = DateFormat('dd-MM-yyyy HH:mm');
//   final dateFormatter = DateFormat('dd-MM-yyyy');
//   final formattedStartDate = dateFormatter.format(startDate);
//   final formattedEndDate = dateFormatter.format(endDate);

//   final orders = <String, List<Map<String, dynamic>>>{};
//   for (var order in result) {
//     final orderId = order['order_id'].toString();
//     if (!orders.containsKey(orderId)) {
//       orders[orderId] = [];
//     }
//     orders[orderId]?.add(order);
//   }

//   final entries = orders.entries.toList();
//   const itemsPerPage = 6;

//   File? imageFile = await getImageFromFile();

//   Uint8List? imageData;
//   if (imageFile != null && await imageFile.exists()) {
//     imageData = await imageFile.readAsBytes();
//   }

//   for (var i = 0; i < entries.length; i += itemsPerPage) {
//     final pageEntries = entries.sublist(
//         i,
//         (i + itemsPerPage) > entries.length
//             ? entries.length
//             : (i + itemsPerPage));

//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: pageEntries.map((entry) {
//               final orderId = entry.key;
//               final orderItems = entry.value;
//               final firstOrder = orderItems.first;

//               return pw.Column(
//                 crossAxisAlignment: pw.CrossAxisAlignment.start,
//                 children: [
//                   pageEntries.indexOf(entry) == 0
//                       ? pw.Column(
//                           crossAxisAlignment: pw.CrossAxisAlignment.start,
//                           children: [
//                             if (imageData != null)
//                               pw.Center(
//                                 child: pw.Image(pw.MemoryImage(imageData),
//                                     height: 70, fit: pw.BoxFit.contain),
//                               ),
//                             pw.SizedBox(height: 20),
//                             pw.Text('LAPORAN PENJUALAN',
//                                 style: pw.TextStyle(
//                                     fontSize: 16.0,
//                                     fontWeight: pw.FontWeight.bold)),
//                             pw.Text(
//                                 'Periode : $formattedStartDate s/d $formattedEndDate',
//                                 style: pw.TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: pw.FontWeight.bold)),
//                             pw.SizedBox(height: 10),
//                             pw.Column(
//                               crossAxisAlignment: pw.CrossAxisAlignment.start,
//                               children: [
//                                 pw.Text(
//                                     'Omzet : ${currencyFormatter.format(vTotalOmzet)}',
//                                     style: pw.TextStyle(
//                                         fontSize: 12.0,
//                                         fontWeight: pw.FontWeight.bold)),
//                                 pw.Text(
//                                     'Laba : ${currencyFormatter.format(vTotalOmzet - vTotalHpp)}',
//                                     style: pw.TextStyle(
//                                         fontSize: 12.0,
//                                         fontWeight: pw.FontWeight.bold)),
//                               ],
//                             ),
//                             pw.Divider(color: PdfColors.green),
//                           ],
//                         )
//                       : pw.SizedBox(height: 10),
//                   pw.Row(
//                     mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                     children: [
//                       pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.start,
//                         children: [
//                           pw.Text(
//                               "Order ID : ${firstOrder['invoice']} (${firstOrder['payment_method']})",
//                               style: pw.TextStyle(
//                                   fontSize: 12.0,
//                                   fontWeight: pw.FontWeight.bold)),
//                           pw.Text('Customer : ${firstOrder['customer']}',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                           pw.Text(
//                               'Total : ${currencyFormatter.format(firstOrder['nominal'])}',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                           pw.Text(
//                               'Laba : ${currencyFormatter.format(firstOrder['nominal'] - firstOrder['total_hpp'])}',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                         ],
//                       ),
//                       pw.Column(
//                         crossAxisAlignment: pw.CrossAxisAlignment.end,
//                         children: [
//                           pw.Text(
//                               "${dateFormatTime.format(DateTime.parse(firstOrder['transaction_time']))} #$orderId",
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                           pw.Text('${firstOrder['total_item']} item',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                           pw.Text('Kasir : ${firstOrder['nama_kasir']}',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                           pw.Text(
//                               'Status : ${firstOrder['is_bayar'] == 1 ? 'Lunas' : 'Belum Lunas'}',
//                               style: const pw.TextStyle(
//                                 fontSize: 10.0,
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                   pw.Divider(thickness: 0.5, color: PdfColors.grey),
//                   pw.Column(
//                     crossAxisAlignment: pw.CrossAxisAlignment.start,
//                     children: orderItems.map((item) {
//                       return pw.Row(
//                         mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                         children: [
//                           pw.Text(
//                             '${item['name']}',
//                             style: const pw.TextStyle(
//                               fontSize: 10.0,
//                             ),
//                           ),
//                           pw.SizedBox(width: 20),
//                           pw.Text(
//                             '${item['quantity']} x ${angkaFormatter.format(item['price'])}  =  ${currencyFormatter.format(item['quantity'] * item['price'])}',
//                             style: const pw.TextStyle(
//                               fontSize: 10.0,
//                             ),
//                           ),
//                         ],
//                       );
//                     }).toList(),
//                   ),
//                   pw.Divider(thickness: 1.0),
//                   pw.SizedBox(height: 10),
//                 ],
//               );
//             }).toList(),
//           );
//         },
//       ),
//     );
//   }

//   final output = await getTemporaryDirectory();
//   final file = File("${output.path}/penjualan_$formattedEndDate.pdf");
//   await file.writeAsBytes(await pdf.save());

//   await Printing.sharePdf(
//       bytes: await pdf.save(), filename: 'penjualan_$formattedEndDate.pdf');
// }
