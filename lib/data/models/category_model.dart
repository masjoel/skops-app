class CategoryModel {
  final String uuid;
  // final int? id;
  final int? userId;
  final String name;
  final String? iconPath;
  final int isSynced;
  final String updatedAt;
  final String? deletedAt;

  CategoryModel({
    required this.uuid,
    // this.id,
    this.userId,
    required this.name,
    this.iconPath,
    this.isSynced = 0,
    required this.updatedAt,
    this.deletedAt,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      uuid: map['uuid'],
      // id: map['id'],
      userId: map['user_id'],
      name: map['name'],
      iconPath: map['icon_path'],
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
      'icon_path': iconPath,
      'is_synced': isSynced,
      'updated_at': updatedAt,
      'deleted_at': deletedAt,
    };
  }
}