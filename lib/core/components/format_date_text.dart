import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormatHariTanggal extends StatelessWidget {
  final DateTime date;
  final bool
      showDate; // kalau true tampil Hari + Tanggal, kalau false hanya Hari
  final TextStyle? style;

  const FormatHariTanggal({
    super.key,
    required this.date,
    this.showDate = true,
    this.style,
  });

  String _formatTanggal(DateTime date) {
    final namaHari =
        DateFormat('EEEE', 'id_ID').format(date).toString(); // pastikan String
    final hari = namaHari == 'Minggu' ? 'Ahad' : namaHari;

    if (showDate) {
      final tgl = DateFormat('dd-MM-yyyy').format(date).toString();
      return "$hari, $tgl";
    }
    return hari;
  }

  @override
  Widget build(BuildContext context) {
    final String formatted = _formatTanggal(date); // hasil pasti String
    return Text(
      formatted,
      style: style ?? const TextStyle(fontSize: 16),
    );
  }
}
