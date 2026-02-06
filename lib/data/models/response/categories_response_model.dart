import 'dart:convert';

class CategoriesResponseModel {
  final bool success;
  final String message;
  final List<Categories> data;

  CategoriesResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CategoriesResponseModel.fromJson(String str) =>
      CategoriesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriesResponseModel.fromMap(Map<String, dynamic> json) =>
      CategoriesResponseModel(
        success: json["success"],
        message: json["message"],
        data: List<Categories>.from(
            json["data"].map((x) => Categories.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Categories {
  final int? id;
  final int? userId;
  final String name;
  final String? iconPath;

  Categories({
    this.id,
    this.userId,
    required this.name,
    this.iconPath,
  });

  factory Categories.fromJson(String str) =>
      Categories.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categories.fromMap(Map<String, dynamic> json) => Categories(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        iconPath: json["icon_path"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "icon_path": iconPath,
      };
  Map<String, dynamic> toLocalMap() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "icon_path": iconPath,
      };

  Categories copyWith({
    int? id,
    String? name,
    String? iconPath,
  }) {
    return Categories(
      id: id ?? this.id,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Categories &&
        other.id == id &&
        other.name == name &&
        other.iconPath == iconPath;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ iconPath.hashCode;
  }
}
