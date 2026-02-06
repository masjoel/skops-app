class CashCategoryModel {
  final String uuid;
  // final int? id;
  final int? userId;
  final String name;
  final String? keterangan;
  final String type;
  final int isSynced;
  final String updatedAt;
  final String? deletedAt;

  CashCategoryModel({
    required this.uuid,
    // this.id,
    this.userId,
    required this.name,
    this.keterangan,
    required this.type,
    this.isSynced = 0,
    required this.updatedAt,
    this.deletedAt,
  });

  factory CashCategoryModel.fromMap(Map<String, dynamic> map) {
    return CashCategoryModel(
      uuid: map['uuid'],
      // id: map['id'],
      userId: map['user_id'],
      name: map['name'],
      keterangan: map['keterangan'],
      type: map['type'],
      isSynced: map['is_synced'] ?? 0,
      updatedAt: map['updated_at'],
      deletedAt: map['deleted_at'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      // 'id': id,
      'user_id': userId,
      'name': name,
      'keterangan': keterangan,
      'type': type,
      'is_synced': isSynced,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }
}