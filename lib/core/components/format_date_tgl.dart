import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormatTanggal extends StatelessWidget {
  final DateTime date;
  final TextStyle? style;

  const FormatTanggal({
    super.key,
    required this.date,
    this.style,
  });

  String _formatTanggal(DateTime date) {
    final tgl = DateFormat('dd-MM-yyyy').format(date).toString();
    return tgl;
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
