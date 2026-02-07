// import 'package:meta/meta.dart';
import 'dart:convert';

class GuruRequestModel {
    final String nip;
    final String nama;
    final String kelas;
    final String ext;
    final String jurusan;

    GuruRequestModel({
        required this.nip,
        required this.nama,
        required this.kelas,
        required this.ext,
        required this.jurusan,
    });

    factory GuruRequestModel.fromJson(String str) => GuruRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GuruRequestModel.fromMap(Map<String, dynamic> json) => GuruRequestModel(
        nip: json["nip"],
        nama: json["nama"],
        kelas: json["kelas"],
        ext: json["ext"],
        jurusan: json["jurusan"],
    );

    Map<String, dynamic> toMap() => {
        "nip": nip,
        "nama": nama,
        "kelas": kelas,
        "ext": ext,
        "jurusan": jurusan,
    };
}
