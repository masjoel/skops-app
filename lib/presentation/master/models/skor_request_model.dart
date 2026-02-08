import 'dart:convert';

class SkorRequestModel {
    final int urut;
    final String kode;
    final String jenis;
    final String deskripsi;
    final int skor;
    final String tipe;
    final String tindakan;

    SkorRequestModel({
        required this.urut,
        required this.kode,
        required this.jenis,
        required this.deskripsi,
        required this.skor,
        required this.tipe,
        required this.tindakan,
    });

    factory SkorRequestModel.fromJson(String str) => SkorRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SkorRequestModel.fromMap(Map<String, dynamic> json) => SkorRequestModel(
        urut: json["urut"],
        kode: json["kode"],
        jenis: json["jenis"],
        deskripsi: json["deskripsi"],
        skor: json["skor"],
        tipe: json["tipe"],
        tindakan: json["tindakan"],
    );

    Map<String, dynamic> toMap() => {
        "urut": urut,
        "kode": kode,
        "jenis": jenis,
        "deskripsi": deskripsi,
        "skor": skor,
        "tipe": tipe,
        "tindakan": tindakan,
    };
}
