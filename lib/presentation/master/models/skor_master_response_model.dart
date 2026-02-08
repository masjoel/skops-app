import 'dart:convert';

class SkorMasterResponseModel {
  final String message;
  final DataSkor data;

  SkorMasterResponseModel({required this.message, required this.data});

  factory SkorMasterResponseModel.fromJson(String str) =>
      SkorMasterResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SkorMasterResponseModel.fromMap(Map<String, dynamic> json) =>
      SkorMasterResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataSkor(skor: [])
            : DataSkor.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
}

class DataSkor {
  final List<Skor> skor;

  DataSkor({required this.skor});

  factory DataSkor.fromJson(String str) => DataSkor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataSkor.fromMap(Map<String, dynamic> json) => DataSkor(
    skor: json["skor"] == null
        ? []
        : List<Skor>.from(json["skor"].map((x) => Skor.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "skor": List<dynamic>.from(skor.map((x) => x.toMap())),
  };
}

class Skor {
  final int id;
  final int urut;
  final String kode;
  final String jenis;
  final int skor;
  final String tindakan;
  final String deskripsi;
  final String tipe;

  Skor({
    required this.id,
    required this.urut,
    required this.kode,
    required this.jenis,
    required this.skor,
    required this.tindakan,
    required this.deskripsi,
    required this.tipe,
  });

  factory Skor.fromJson(String str) => Skor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Skor.fromMap(Map<String, dynamic> json) => Skor(
    id: json["id"] ?? 0,
    urut: json["urut"] ?? 0,
    kode: json["kode"] ?? '',
    jenis: json["jenis"] ?? '',
    skor: json["skor"] ?? 0,
    tindakan: json["tindakan"] ?? '',
    deskripsi: json["deskripsi"] ?? '',
    tipe: json["tipe"] ?? '',
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "urut": urut,
    "kode": kode,
    "jenis": jenis,
    "skor": skor,
    "tindakan": tindakan,
    "deskripsi": deskripsi,
    "tipe": tipe,
  };
}
