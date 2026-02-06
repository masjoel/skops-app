import 'dart:convert';

class KelasResponseModel {
  final String message;
  final DataKelas data;

  KelasResponseModel({required this.message, required this.data});

  factory KelasResponseModel.fromJson(String str) =>
      KelasResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory KelasResponseModel.fromMap(Map<String, dynamic> json) =>
      KelasResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataKelas(kelas: [])
            : DataKelas.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
}

class DataKelas {
  final List<Kelas> kelas;

  DataKelas({required this.kelas});

  factory DataKelas.fromJson(String str) => DataKelas.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataKelas.fromMap(Map<String, dynamic> json) => DataKelas(
    kelas: json["kelas"] == null
        ? []
        : List<Kelas>.from(json["kelas"].map((x) => Kelas.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "kelas": List<dynamic>.from(kelas.map((x) => x.toMap())),
  };
}

class Kelas {
  final int id;
  final int perusahaanId;
  final int userId;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  Kelas({
    required this.id,
    required this.perusahaanId,
    required this.userId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Kelas.fromJson(String str) => Kelas.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Kelas.fromMap(Map<String, dynamic> json) => Kelas(
    id: json["id"],
    perusahaanId: json["perusahaan_id"],
    userId: json["user_id"],
    name: json["name"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "perusahaan_id": perusahaanId,
    "user_id": userId,
    "name": name,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
