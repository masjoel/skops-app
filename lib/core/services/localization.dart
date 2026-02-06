import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class L {
  static final L _i = L._internal();
  factory L() => _i;
  L._internal();

  Map<String, dynamic> _map = {};
  late SharedPreferences _prefs;

  static const _kLang = 'lang';
  static const _kCurrency = 'currency'; // store code, e.g., IDR
  static const _kDark = 'darkMode';

  String get lang => _prefs.getString(_kLang) ?? 'id';
  String get currencyCode => _prefs.getString(_kCurrency) ?? 'IDR';
  bool get darkMode => _prefs.getBool(_kDark) ?? false;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    await load(lang);
  }

  Future<void> load(String code) async {
    final data = await rootBundle.loadString('assets/lang/$code.json');
    _map = jsonDecode(data) as Map<String, dynamic>;
    await _prefs.setString(_kLang, code);
  }

  Future<void> setDark(bool v) async => _prefs.setBool(_kDark, v);

  Future<void> setCurrency(String code) async => _prefs.setString(_kCurrency, code);

  String t(String key, {Map<String, String>? params}) {
    var s = _map[key] ?? key;
    if (s is List) {
      return s.join('\n\n');
    }
    if (params != null) {
      params.forEach((k, v) => s = (s as String).replaceAll('{$k}', v));
    }
    return s as String;
  }
}

class CurrencyMeta {
  final String code;
  final String symbol;
  final String name;
  CurrencyMeta(this.code, this.symbol, this.name);
  factory CurrencyMeta.fromMap(Map<String, dynamic> m) =>
      CurrencyMeta(m['code'], m['symbol'], m['name']);
}

Future<List<CurrencyMeta>> loadCurrencies() async {
  final s = await rootBundle.loadString('assets/config/currencies.json');
  final arr = (jsonDecode(s) as List).cast<Map<String, dynamic>>();
  return arr.map(CurrencyMeta.fromMap).toList();
}
