import 'dart:convert';

class JurusanResponseModel {
  final String message;
  final DataJurusan data;

  JurusanResponseModel({required this.message, required this.data});

  factory JurusanResponseModel.fromJson(String str) =>
      JurusanResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory JurusanResponseModel.fromMap(Map<String, dynamic> json) =>
      JurusanResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataJurusan(jurusan: [])
            : DataJurusan.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
}

class DataJurusan {
  final List<Jurusan> jurusan;

  DataJurusan({required this.jurusan});

  factory DataJurusan.fromJson(String str) =>
      DataJurusan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataJurusan.fromMap(Map<String, dynamic> json) => DataJurusan(
    jurusan: json["jurusan"] == null
        ? []
        : List<Jurusan>.from(json["jurusan"].map((x) => Jurusan.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "jurusan": List<dynamic>.from(jurusan.map((x) => x.toMap())),
  };
}

class Jurusan {
  final int id;
  final int perusahaanId;
  final int userId;
  final String name;
  final String kode;
  final DateTime createdAt;
  final DateTime updatedAt;

  Jurusan({
    required this.id,
    required this.perusahaanId,
    required this.userId,
    required this.name,
    required this.kode,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Jurusan.fromJson(String str) => Jurusan.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Jurusan.fromMap(Map<String, dynamic> json) => Jurusan(
    id: json["id"],
    perusahaanId: json["perusahaan_id"],
    userId: json["user_id"],
    name: json["name"],
    kode: json["kode"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "perusahaan_id": perusahaanId,
    "user_id": userId,
    "name": name,
    "kode": kode,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
