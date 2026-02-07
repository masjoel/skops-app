import 'dart:convert';

class WalikelasRequestModel {
    final int idguru;
    final String kelas;
    final String ext;
    final String jurusan;
    final int tahun;

    WalikelasRequestModel({
        required this.idguru,
        required this.kelas,
        required this.ext,
        required this.jurusan,
        required this.tahun,
    });

    factory WalikelasRequestModel.fromJson(String str) => WalikelasRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory WalikelasRequestModel.fromMap(Map<String, dynamic> json) => WalikelasRequestModel(
        idguru: json["idguru"],
        kelas: json["kelas"],
        ext: json["ext"],
        jurusan: json["jurusan"],
        tahun: json["tahun"],
    );

    Map<String, dynamic> toMap() => {
        "idguru": idguru,
        "kelas": kelas,
        "ext": ext,
        "jurusan": jurusan,
        "tahun": tahun,
    };
}
