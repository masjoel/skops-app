import 'dart:convert';

class EkstensiResponseModel {
  final String message;
  final DataEkstensi data;

  EkstensiResponseModel({required this.message, required this.data});

  factory EkstensiResponseModel.fromJson(String str) =>
      EkstensiResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EkstensiResponseModel.fromMap(Map<String, dynamic> json) =>
      EkstensiResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataEkstensi(kelasExt: [])
            : DataEkstensi.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
}

class DataEkstensi {
  final List<KelasExt> kelasExt;

  DataEkstensi({required this.kelasExt});

  factory DataEkstensi.fromJson(String str) =>
      DataEkstensi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataEkstensi.fromMap(Map<String, dynamic> json) => DataEkstensi(
    kelasExt: json["kelasExt"] == null
        ? []
        : List<KelasExt>.from(json["kelasExt"].map((x) => KelasExt.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "kelasExt": List<dynamic>.from(kelasExt.map((x) => x.toMap())),
  };
}

class KelasExt {
  final int id;
  final int perusahaanId;
  final int userId;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  KelasExt({
    required this.id,
    required this.perusahaanId,
    required this.userId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory KelasExt.fromJson(String str) => KelasExt.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory KelasExt.fromMap(Map<String, dynamic> json) => KelasExt(
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
