// import 'dart:io';
// import 'package:intl/intl.dart';
// import 'package:webview_skops/data/models/response/product_response_model.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import '../../core/services/localization.dart';
// import '../../core/services/storage_paths.dart';
// import '../datasources/product_local_datasource.dart';
// // import 'db.dart';
// import '../models/entry.dart';

// /// Locale aktif (fallback aman)
// String _activeLocale() {
//   return Intl.defaultLocale ?? (L().lang == 'id' ? 'id_ID' : 'en_US');
// }

// /// Formatter angka: pakai pemisah ribuan & 2 desimal sesuai locale
// NumberFormat _numFmt() {
//   final f = NumberFormat.decimalPattern(_activeLocale());
//   f.minimumFractionDigits = 2;
//   f.maximumFractionDigits = 2;
//   return f;
// }

// /// Format tanggal/waktu sesuai locale aktif
// String _fmtDate(DateTime d) => DateFormat.yMd(_activeLocale()).format(d);
// String _fmtTime(DateTime d) => DateFormat.Hm(_activeLocale()).format(d);

// /// Header kolom (lokalisasi)
// List<String> _headers() {
//   final l = L();
//   return [
//     l.t('col_date'),
//     l.t('col_time'),
//     l.t('col_note'),
//     l.t('col_income'),
//     l.t('col_expense'),
//     l.t('col_balance'),
//   ];
// }

// /// Ambil semua entry ascending
// // Future<List<Entry>> _allAsc() async {
// //   final list = await AppDB().allEntries();
// //   list.sort((a, b) => a.createdAt.compareTo(b.createdAt));
// //   return list;
// // }

// /// Hitung saldo awal sebelum [start]
// double _openingBalance(List<Entry> all, DateTime start) {
//   double bal = 0.0;
//   for (final e in all) {
//     if (e.createdAt.isBefore(start)) {
//       bal += e.isIncome ? e.amount.toDouble() : -e.amount.toDouble();
//     } else {
//       break; // ascending → bisa break
//     }
//   }
//   return bal;
// }

// /// Filter list dalam rentang [start .. end] (inklusif)
// List<Entry> _inRange(List<Entry> all, DateTime start, DateTime end) {
//   return all.where((e) {
//     final d = e.createdAt;
//     return (d.isAfter(start.subtract(const Duration(milliseconds: 1))) &&
//         d.isBefore(end.add(const Duration(milliseconds: 1))));
//   }).toList();
// }

// /// Rows string untuk PDF/Excel dengan running balance dari opening balance
// List<List<String>> _rowsForRange(
//   List<Entry> allAsc,
//   DateTime start,
//   DateTime end,
// ) {
//   final rows = <List<String>>[];
//   final nf = _numFmt();
//   double saldo = _openingBalance(allAsc, start);

//   final ranged = _inRange(allAsc, start, end);
//   for (final e in ranged) {
//     saldo += e.isIncome ? e.amount.toDouble() : -e.amount.toDouble();
//     rows.add([
//       _fmtDate(e.createdAt),
//       _fmtTime(e.createdAt),
//       e.note,
//       e.isIncome ? nf.format(e.amount.toDouble()) : '',
//       !e.isIncome ? nf.format(e.amount.toDouble()) : '',
//       nf.format(saldo),
//     ]);
//   }
//   return rows;
// }

// /// EXPORT → Excel (.xlsx) (dengan range)
// // Future<File> exportToExcel({
// //   required DateTime start,
// //   required DateTime end,
// // }) async {
// //   final dirs = await ensureKasirLapakDirs();
// //   final all = await _allAsc();
// //   final headers = _headers();
// //   final rows = _rowsForRange(all, start, end);

// //   final book = xlsio.Workbook();
// //   final sheet = book.worksheets[0];

// //   // Header
// //   for (int c = 0; c < headers.length; c++) {
// //     sheet.getRangeByIndex(1, c + 1).setText(headers[c]);
// //   }
// //   final headerStyle = book.styles.add('header');
// //   headerStyle.bold = true;
// //   for (int c = 0; c < headers.length; c++) {
// //     sheet.getRangeByIndex(1, c + 1).cellStyle = headerStyle;
// //   }

// //   // Rows (ditulis sebagai TEXT agar pemisah ribuan sesuai locale terlihat persis)
// //   for (int r = 0; r < rows.length; r++) {
// //     for (int c = 0; c < rows[r].length; c++) {
// //       sheet.getRangeByIndex(r + 2, c + 1).setText(rows[r][c]);
// //     }
// //   }

// //   // Auto-fit semua kolom
// //   final lastRow = rows.length + 1; // +1 untuk header
// //   sheet.getRangeByIndex(1, 1, lastRow, headers.length).autoFitColumns();

// //   final bytes = book.saveAsStream();
// //   book.dispose();

// //   final ts = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
// //   final file = File('${dirs.exportExcel.path}/kasnote_$ts.xlsx');
// //   await file.writeAsBytes(bytes, flush: true);
// //   return file;
// // }

// /// BACKUP -> salin DB ke folder Backup
// Future<File> makeBackup({String? fileName}) async {
//   final dirs = await ensureKasirLapakDirs();
//   final ts = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
//   final name = fileName ?? 'kasirlapak_backup_$ts.db';

//   final dbFile = await ProductLocalDatasource.instance.exportDB(); // File
//   final out = File('${dirs.backup.path}/$name');
//   await out.writeAsBytes(await dbFile.readAsBytes(), flush: true);
//   return out;
// }
