import 'dart:convert';

class SiswaResponseModel {
  final String message;
  final DataSiswa data;

  SiswaResponseModel({
    required this.message,
    required this.data,
  });

  factory SiswaResponseModel.fromJson(String str) =>
      SiswaResponseModel.fromMap(json.decode(str));

  factory SiswaResponseModel.fromMap(Map<String, dynamic> json) =>
      SiswaResponseModel(
        message: json["message"] ?? "",
        data: json["data"] == null
            ? DataSiswa.empty()
            : DataSiswa.fromMap(json["data"]),
      );
}

class DataSiswa {
  final List<Siswa> siswa;
  final int currentPage;
  final int lastPage;
  final int total;
  final int perPage;

  DataSiswa({
    required this.siswa,
    required this.currentPage,
    required this.lastPage,
    required this.total,
    required this.perPage,
  });

  factory DataSiswa.empty() => DataSiswa(
        siswa: [],
        currentPage: 1,
        lastPage: 1,
        total: 0,
        perPage: 20,
      );

  factory DataSiswa.fromMap(Map<String, dynamic> json) {
    final pagination = json["siswa"];

    return DataSiswa(
      siswa: pagination == null
          ? []
          : List<Siswa>.from(
              pagination["data"].map((x) => Siswa.fromMap(x)),
            ),
      currentPage: pagination?["current_page"] ?? 1,
      lastPage: pagination?["last_page"] ?? 1,
      total: pagination?["total"] ?? 0,
      perPage: pagination?["per_page"] ?? 20,
    );
  }
}

class Siswa {
  final int id;
  final int iduser;
  final String nis;
  final String nisn;
  final String nama;
  final String? username;
  final String kelas;
  final String ext;
  final String jurusan;
  final String? alamat;
  final String? kota;
  final String? hp;
  final String? email;
  final String? photo;
  final String? ket;

  Siswa({
    required this.id,
    required this.iduser,
    required this.nis,
    required this.nisn,
    required this.nama,
    this.username,
    required this.kelas,
    required this.ext,
    required this.jurusan,
    this.alamat,
    this.kota,
    this.hp,
    this.email,
    this.photo,
    this.ket,
  });

  factory Siswa.fromMap(Map<String, dynamic> json) => Siswa(
        id: json["id"] ?? 0,
        iduser: json["iduser"] ?? 0,
        nis: json["nis"] ?? "",
        nisn: json["nisn"] ?? "",
        nama: json["nama"] ?? "",
        username: json["username"],
        kelas: json["kelas"] ?? "",
        ext: json["ext"] ?? "",
        jurusan: json["jurusan"] ?? "",
        alamat: json["alamat"],
        kota: json["kota"],
        hp: json["hp"],
        email: json["email"],
        photo: json["photo"],
        ket: json["ket"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iduser": iduser,
        "nis": nis,
        "nisn": nisn,
        "nama": nama,
        "username": username,
        "kelas": kelas,
        "ext": ext,
        "jurusan": jurusan,
        "alamat": alamat,
        "kota": kota,
        "hp": hp,
        "email": email,
        "photo": photo,
        "ket": ket,
      };
}
