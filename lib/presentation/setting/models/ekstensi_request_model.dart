import 'dart:convert';

class EkstensiRequestModel {
  final String name;

  EkstensiRequestModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory EkstensiRequestModel.fromMap(Map<String, dynamic> map) {
    return EkstensiRequestModel(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EkstensiRequestModel.fromJson(String source) =>
      EkstensiRequestModel.fromMap(json.decode(source));
}