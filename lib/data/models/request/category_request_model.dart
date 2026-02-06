// import 'package:meta/meta.dart';
import 'dart:convert';

class CategoryRequestModel {
  final String name;
  final String icon;

  CategoryRequestModel({
    required this.name,
    required this.icon,
  });

  factory CategoryRequestModel.fromJson(String str) =>
      CategoryRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryRequestModel.fromMap(Map<String, dynamic> json) =>
      CategoryRequestModel(
        name: json["name"],
        icon: json["icon_path"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "icon_path": icon,
      };
}
