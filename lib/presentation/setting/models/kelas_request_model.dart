import 'dart:convert';

class KelasRequestModel {
  final String name;

  KelasRequestModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory KelasRequestModel.fromMap(Map<String, dynamic> map) {
    return KelasRequestModel(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory KelasRequestModel.fromJson(String source) =>
      KelasRequestModel.fromMap(json.decode(source));
}