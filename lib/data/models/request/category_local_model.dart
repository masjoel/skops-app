// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryLocalModel {
  final String uuid;
  final int? id;
  final String name;
  final String iconPath;
  final int isSynced;
  final String updatedAt;
  CategoryLocalModel({
    required this.uuid,
    this.id,
    required this.name,
    required this.iconPath,
    this.isSynced = 0,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'id': id,
      'name': name,
      'icon_path': iconPath,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toMapForLocal() {
    return <String, dynamic>{
      'uuid': uuid,
      'name': name,
      'icon_path': iconPath,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toLocalMap() => {
        "uuid": uuid,
        "id": id,
        "name": name,
        "icon_path": iconPath,
        "is_synced": isSynced,
        "updated_at": updatedAt,
      };

  factory CategoryLocalModel.fromLocalMap(Map<String, dynamic> map) {
    return CategoryLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      iconPath: map['icon_path'] as String,
      isSynced: map['is_synced'] as int,
      updatedAt: map['updated_at'] as String,
    );
  }
  factory CategoryLocalModel.fromMap(Map<String, dynamic> map) {
    return CategoryLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      iconPath: map['icon_path'] as String,
      isSynced: map['is_synced'] ?? 0,
      updatedAt: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryLocalModel.fromJson(String source) =>
      CategoryLocalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  CategoryLocalModel copyWith({
    String? uuid,
    int? id,
    String? name,
    String? iconPath,
    int? isSynced,
    String? updatedAt,
  }) {
    return CategoryLocalModel(
      uuid: uuid ?? this.uuid,
      id: id ?? this.id,
      name: name ?? this.name,
      iconPath: iconPath ?? this.iconPath,
      isSynced: isSynced ?? this.isSynced,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() =>
      'CategoryLocalModel(uuid: $uuid, id: $id, name: $name, iconPath: $iconPath, isSynced: $isSynced, updatedAt: $updatedAt)';

  @override
  bool operator ==(covariant CategoryLocalModel other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid && other.id == id && other.name == name && other.iconPath == iconPath && other.isSynced == isSynced && other.updatedAt == updatedAt;
  }

  @override
  int get hashCode => uuid.hashCode ^ id.hashCode ^ name.hashCode ^ iconPath.hashCode ^ isSynced.hashCode ^ updatedAt.hashCode;
}
