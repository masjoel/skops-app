import 'dart:convert';

class CashCategoryLocalModel {
  final String uuid;
  final int? id;
  final String name;
  final String type;
  final String keterangan;
  final int isSynced;
  final String updatedAt;
  CashCategoryLocalModel({
    required this.uuid,
    this.id,
    required this.name,
    required this.type,
    required this.keterangan,
    this.isSynced = 0,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'id': id,
      'name': name,
      'type': type,
      'keterangan': keterangan,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toMapForLocal() {
    return <String, dynamic>{
      'uuid': uuid,
      'name': name,
      'type': type,
      'keterangan': keterangan,
      'is_synced': isSynced,
      'updated_at': updatedAt,
    };
  }

  Map<String, dynamic> toLocalMap() => {
        'uuid': uuid,
        "id": id,
        "name": name,
        "type": type,
        "keterangan": keterangan,
        'is_synced': isSynced,
        'updated_at': updatedAt,
      };

  factory CashCategoryLocalModel.fromLocalMap(Map<String, dynamic> map) {
    return CashCategoryLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      type: map['type'] as String,
      keterangan: map['keterangan'] as String,
      isSynced: map['is_synced'] as int,
      updatedAt: map['updated_at'] as String,
    );
  }
  factory CashCategoryLocalModel.fromMap(Map<String, dynamic> map) {
    return CashCategoryLocalModel(
      uuid: map['uuid'] as String,
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      type: map['type'] as String,
      keterangan: map['keterangan'] as String,
      isSynced: map['is_synced'] ?? 0,
      updatedAt: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CashCategoryLocalModel.fromJson(String source) =>
      CashCategoryLocalModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  CashCategoryLocalModel copyWith({
    String? uuid,
    int? id,
    String? name,
    String? type,
    String? keterangan,
    int? isSynced,
    String? updatedAt,
  }) {
    return CashCategoryLocalModel(
      uuid: uuid ?? this.uuid,
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      keterangan: keterangan ?? this.keterangan,
      isSynced: isSynced ?? this.isSynced,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  String toString() =>
      'CashCategoryLocalModel(uuid: $uuid, id: $id, name: $name, keterangan: $keterangan, isSynced: $isSynced, updatedAt: $updatedAt)';

  @override
  bool operator ==(covariant CashCategoryLocalModel other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.id == id &&
        other.name == name &&
        other.type == type &&
        other.keterangan == keterangan &&
        other.isSynced == isSynced &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      uuid.hashCode ^
      id.hashCode ^
      name.hashCode ^
      type.hashCode ^
      keterangan.hashCode ^
      isSynced.hashCode ^
      updatedAt.hashCode;
}
