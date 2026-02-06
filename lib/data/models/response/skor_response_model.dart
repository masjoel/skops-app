import 'dart:convert';

class SkorResponseModel {
    final String message;
    final List<JenisSkor> data;

    SkorResponseModel({
        required this.message,
        required this.data,
    });

    factory SkorResponseModel.fromJson(String str) => SkorResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SkorResponseModel.fromMap(Map<String, dynamic> json) => SkorResponseModel(
        message: json["message"],
        data: List<JenisSkor>.from(json["data"].map((x) => JenisSkor.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class JenisSkor {
    final int id;
    final String kode;
    final String deskripsi;
    final String jenis;
    final int skor;
    final String tindakan;
    final String tipe;

    JenisSkor({
        required this.id,
        required this.kode,
        required this.deskripsi,
        required this.jenis,
        required this.skor,
        required this.tindakan,
        required this.tipe,
    });

    factory JenisSkor.fromJson(String str) => JenisSkor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory JenisSkor.fromMap(Map<String, dynamic> json) => JenisSkor(
        id: json["id"],
        kode: json["kode"],
        deskripsi: json["deskripsi"],
        jenis: json["jenis"],
        skor: json["skor"],
        tindakan: json["tindakan"],
        tipe: json["tipe"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "kode": kode,
        "deskripsi": deskripsi,
        "jenis": jenis,
        "skor": skor,
        "tindakan": tindakan,
        "tipe": tipe,
    };
}

