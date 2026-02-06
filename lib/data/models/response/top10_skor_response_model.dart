import 'dart:convert';

class Top10SkorResponseModel {
    final String message;
    final List<Top10Skor> data;

    Top10SkorResponseModel({
        required this.message,
        required this.data,
    });

    factory Top10SkorResponseModel.fromJson(String str) => Top10SkorResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10SkorResponseModel.fromMap(Map<String, dynamic> json) => Top10SkorResponseModel(
        message: json["message"],
        data: List<Top10Skor>.from(json["data"].map((x) => Top10Skor.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class Top10Skor {
    final int idskor;
    final String jenis;
    final int skor;
    final String tipe;
    final int jumlah;

    Top10Skor({
        required this.idskor,
        required this.jenis,
        required this.skor,
        required this.tipe,
        required this.jumlah,
    });

    factory Top10Skor.fromJson(String str) => Top10Skor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10Skor.fromMap(Map<String, dynamic> json) => Top10Skor(
        idskor: json["idskor"],
        jenis: json["jenis"],
        skor: json["skor"],
        tipe: json["tipe"],
        jumlah: json["jumlah"],
    );

    Map<String, dynamic> toMap() => {
        "idskor": idskor,
        "jenis": jenis,
        "skor": skor,
        "tipe": tipe,
        "jumlah": jumlah,
    };
}
