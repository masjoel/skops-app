import 'dart:convert';

class SiswaRequestModel {
  final String nama;
  final String? nis;
  final String? nisn;
  final String kelas;
  final String? ext;
  final String? jurusan;

  SiswaRequestModel({
    required this.nama,
    this.nis,
    this.nisn,
    required this.kelas,
    this.ext,
    this.jurusan,
  });

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'nis': nis,
      'nisn': nisn,
      'kelas': kelas,
      'ext': ext,
      'jurusan': jurusan,
    };
  }

  factory SiswaRequestModel.fromMap(Map<String, dynamic> map) {
    return SiswaRequestModel(
      nama: map['nama'] ?? '',
      nis: map['nis'] ?? '',
      nisn: map['nisn'] ?? '',
      kelas: map['kelas'] ?? '',
      ext: map['ext'] ?? '',
      jurusan: map['jurusan'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SiswaRequestModel.fromJson(String source) =>
      SiswaRequestModel.fromMap(json.decode(source));
}
