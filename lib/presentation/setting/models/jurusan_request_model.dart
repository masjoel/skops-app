import 'dart:convert';

class JurusanRequestModel {
  final String name;
  final String? kode;

  JurusanRequestModel({
    required this.name,
    this.kode,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'kode': kode,
    };
  }

  factory JurusanRequestModel.fromMap(Map<String, dynamic> map) {
    return JurusanRequestModel(
      name: map['name'] ?? '',
      kode: map['kode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory JurusanRequestModel.fromJson(String source) =>
      JurusanRequestModel.fromMap(json.decode(source));
}