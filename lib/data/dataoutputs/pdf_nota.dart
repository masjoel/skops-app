// import 'dart:io';
// import 'dart:typed_data';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:intl/intl.dart';
// import 'package:printing/printing.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../presentation/home/models/order_item.dart';

// class PdfNota {
//   Future<File?> getImageFromFile() async {
//     final prefs = await SharedPreferences.getInstance();
//     String? fileName = prefs.getString('saved_logo_path');

//     if (fileName != null) {
//       final file = File(fileName);
//       if (await file.exists()) {
//         return file;
//       }
//     }
//     return null;
//   }

//   Future<void> exportToPdf(
//     List<OrderItem> products,
//     int id,
//     String invoice,
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
//     final pdf = pw.Document();

//     // Mengatur ukuran halaman menjadi 58mm x tinggi yang sesuai
//     const pageFormat = PdfPageFormat(
//       88 * PdfPageFormat.mm,
//       double.infinity,
//       marginAll: 5 * PdfPageFormat.mm,
//     );
//     final angkaFormatter =
//         NumberFormat.currency(locale: 'id', symbol: '', decimalDigits: 0);

//     File? imageFile = await getImageFromFile();
//     final inv = invoice == "" ? '#${id + 1}' : invoice;

//     Uint8List? imageData;
//     if (imageFile != null && await imageFile.exists()) {
//       imageData = await imageFile.readAsBytes();
//     }
//     pdf.addPage(
//       pw.Page(
//         pageFormat: pageFormat, //pageFormat.a4,
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               if (imageData != null)
//                 pw.Center(
//                   child: pw.Image(pw.MemoryImage(imageData),
//                       height: 70, fit: pw.BoxFit.contain),
//                 ),
//               pw.SizedBox(height: 8),
//               pw.Center(
//                 child: pw.Text(
//                   namaUsaha,
//                   style: const pw.TextStyle(fontSize: 22),
//                 ),
//               ),
//               pw.SizedBox(height: 8),
//               pw.Center(
//                 child: pw.Text(
//                   tagline,
//                   style: const pw.TextStyle(fontSize: 12),
//                 ),
//               ),
//               pw.Center(
//                 child: pw.Text(
//                   alamat,
//                   style: const pw.TextStyle(fontSize: 12),
//                 ),
//               ),
//               pw.SizedBox(height: 20),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Text(customer),
//                   pw.Text(inv),
//                 ],
//               ),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Text('Kasir: $namaKasir',
//                       style: const pw.TextStyle(fontSize: 10)),
//                   pw.Text(DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now()),
//                       style: const pw.TextStyle(fontSize: 10)),
//                 ],
//               ),
//               pw.Divider(),
//               ...products.map(
//                 (product) => pw.Column(
//                   crossAxisAlignment: pw.CrossAxisAlignment.start,
//                   children: [
//                     pw.Text(product.product.name),
//                     pw.Row(
//                       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                       children: [
//                         // pw.Text(
//                         //     '${product.quantity} x ${angkaFormatter.format(product.product.price)}'),
//                         // pw.Text(angkaFormatter
//                         //     .format(product.quantity * product.product.price)),
//                         pw.Text(product.product.isDiscount
//                             ? "${product.quantity} x ${angkaFormatter.format(product.product.price - product.product.discount * product.product.price * 0.01)}"
//                             : "${product.quantity} x ${angkaFormatter.format(product.product.price - product.product.discount)}"),
//                         pw.Text(
//                           product.product.isDiscount
//                               ? "= ${angkaFormatter.format(product.quantity * (product.product.price - product.product.discount * product.product.price * 0.01))}"
//                               : "= ${angkaFormatter.format(product.quantity * (product.product.price - product.product.discount))}",
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               pw.Divider(),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Text('Jumlah Item: $totalQuantity'),
//                 ],
//               ),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Text('Total'),
//                   pw.Text(angkaFormatter.format(totalPrice)),
//                 ],
//               ),
//               pw.Row(
//                 mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                 children: [
//                   pw.Text('Bayar ($paymentMethod)'),
//                   pw.Text(angkaFormatter.format(nominalBayar)),
//                 ],
//               ),
//               paymentMethod != 'Tunai'
//                   ? pw.Text('')
//                   : pw.Row(
//                       mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//                       children: [
//                         pw.Text('Kembali'),
//                         pw.Text(
//                             angkaFormatter.format(nominalBayar - totalPrice)),
//                       ],
//                     ),
//               keterangan == null || keterangan == ""
//                   ? pw.Text('')
//                   : pw.Divider(),
//               keterangan == null || keterangan == ""
//                   ? pw.Text('')
//                   : pw.Text('Catatan: ',
//                       style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
//               keterangan == null || keterangan == ""
//                   ? pw.Text('')
//                   : pw.Text(keterangan, style: pw.TextStyle(fontSize: 12)),
//               pw.SizedBox(height: 20),
//               pw.Center(
//                 child: pw.Text(ucapanPenutup),
//               ),
//             ],
//           );
//         },
//       ),
//     );

//     // Save PDF to a local file
//     final output = await getTemporaryDirectory();
//     final file = File("${output.path}/order_$id.pdf");
//     await file.writeAsBytes(await pdf.save());

//     // print("PDF saved to ${file.path}");
//     await Printing.sharePdf(bytes: await pdf.save(), filename: 'nota_$id.pdf');
//   }
// }
