// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductUnitLocalModel {
  final String uuid;
  final int? id;
  final String name;
  final String keterangan;
  final int isSynced;
  final String updatedAt;
  ProductUnitLocalModel({
    required this.uuid,
    this.id,
    required this.name,
    required this.keterangan,
    this.isSynced = 0,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'id': id,
      'name': name,
      'keterangan': keterangan,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toMapForLocal() {
    return <String, dynamic>{
      'uuid': uuid,
      'name': name,
      'keterangan': keterangan,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toLocalMap() => {
        'uuid': uuid,
        "id": id,
        "name": name,
        "keterangan": keterangan,
        "is_synced": isSynced,
        "updated_at": updatedAt,
      };

  factory ProductUnitLocalModel.fromLocalMap(Map<String, dynamic> map) {
    return ProductUnitLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      keterangan: map['keterangan'] as String,
      isSynced: map['is_synced'] as int,
      updatedAt: map['updated_at'] as String,
    );
  }
  factory ProductUnitLocalModel.fromMap(Map<String, dynamic> map) {
    return ProductUnitLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      keterangan: map['keterangan'] as String,
      isSynced: map['is_synced'] ?? 0,
      updatedAt: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductUnitLocalModel.fromJson(String source) =>
      ProductUnitLocalModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  ProductUnitLocalModel copyWith({
    String? uuid,
    int? id,
    String? name,
    String? keterangan,
    int? isSynced,
    String? updatedAt,
  }) {
    return ProductUnitLocalModel(
      uuid: uuid ?? this.uuid,
      id: id ?? this.id,
      name: name ?? this.name,
      keterangan: keterangan ?? this.keterangan,
      isSynced: isSynced ?? this.isSynced,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() =>
      'ProductUnitLocalModel(uuid: $uuid, id: $id, name: $name, keterangan: $keterangan, isSynced: $isSynced, updatedAt: $updatedAt)';

  @override
  bool operator ==(covariant ProductUnitLocalModel other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.id == id &&
        other.name == name &&
        other.keterangan == keterangan &&
        other.isSynced == isSynced &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      uuid.hashCode ^
      id.hashCode ^
      name.hashCode ^
      keterangan.hashCode ^
      isSynced.hashCode ^
      updatedAt.hashCode;
}
