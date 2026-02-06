class SatuanModel {
  final String uuid;
  // final int? id;
  final int? userId;
  final String name;
  final String? keterangan;
  final int isSynced;
  final String updatedAt;
  final String? deletedAt;

  SatuanModel({
    required this.uuid,
    // this.id,
    this.userId,
    required this.name,
    this.keterangan,
    this.isSynced = 0,
    required this.updatedAt,
    this.deletedAt,
  });

  factory SatuanModel.fromMap(Map<String, dynamic> map) {
    return SatuanModel(
      uuid: map['uuid'],
      // id: map['id'],
      userId: map['user_id'],
      name: map['name'],
      keterangan: map['keterangan'],
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
      'is_synced': isSynced,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }
}