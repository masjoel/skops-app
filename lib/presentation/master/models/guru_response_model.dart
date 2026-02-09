import 'dart:convert';

class GuruResponseModel {
  final String message;
  final DataGuru data;

  GuruResponseModel({required this.message, required this.data});

  factory GuruResponseModel.fromJson(String str) =>
      GuruResponseModel.fromMap(json.decode(str));

  factory GuruResponseModel.fromMap(Map<String, dynamic> json) =>
      GuruResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataGuru.empty()
            : DataGuru.fromMap(json["data"]),
      );
}

class DataGuru {
  final List<Guru> guru;
  final int currentPage;
  final int lastPage;
  final int total;
  final int perPage;

  DataGuru({
    required this.guru,
    required this.currentPage,
    required this.lastPage,
    required this.total,
    required this.perPage,
  });

  factory DataGuru.empty() =>
      DataGuru(guru: [], currentPage: 1, lastPage: 1, total: 0, perPage: 20);

  factory DataGuru.fromMap(Map<String, dynamic> json) {
    final pagination = json["guru"];

    if (pagination == null) {
      return DataGuru(
        guru: json["data"] != null 
            ? List<Guru>.from(json["data"].map((x) => Guru.fromMap(x)))
            : [],
        currentPage: 1,
        lastPage: 1,
        total: 0,
        perPage: 20,
      );
    }
    
    if (pagination is Map && pagination["data"] != null) {
      return DataGuru(
        guru: List<Guru>.from(pagination["data"].map((x) => Guru.fromMap(x))),
        currentPage: pagination["current_page"] ?? 1,
        lastPage: pagination["last_page"] ?? 1,
        total: pagination["total"] ?? 0,
        perPage: pagination["per_page"] ?? 20,
      );
    }
    
    if (pagination is List) {
      return DataGuru(
        guru: List<Guru>.from(pagination.map((x) => Guru.fromMap(x))),
        currentPage: 1,
        lastPage: 1,
        total: pagination.length,
        perPage: pagination.length,
      );
    }
    
    return DataGuru.empty();
  }
}

class Guru {
  final int id;
  final int iduser;
  final String nis;
  final dynamic nisn;
  final String nama;
  final dynamic username;
  final String kelas;
  final String ext;
  final String? jurusan;
  final dynamic alamat;
  final dynamic kota;
  final dynamic hp;
  final dynamic email;
  final dynamic photo;
  final dynamic ket;
  final String status;

  Guru({
    required this.id,
    required this.iduser,
    required this.nis,
    required this.nisn,
    required this.nama,
    required this.username,
    required this.kelas,
    required this.ext,
    required this.jurusan,
    required this.alamat,
    required this.kota,
    required this.hp,
    required this.email,
    required this.photo,
    required this.ket,
    required this.status,
  });

  factory Guru.fromMap(Map<String, dynamic> json) => Guru(
    id: json["id"] ?? 0,
    iduser: json["iduser"] ?? 0,
    nis: json["nis"] ?? "",
    nisn: json["nisn"] ?? "",
    nama: json["nama"] ?? "",
    username: json["username"] ?? "",
    kelas: json["kelas"] ?? "",
    ext: json["ext"] ?? "",
    jurusan: json["jurusan"] ?? "",
    alamat: json["alamat"] ?? "",
    kota: json["kota"] ?? "",
    hp: json["hp"] ?? "",
    email: json["email"] ?? "",
    photo: json["photo"] ?? "",
    ket: json["ket"] ?? "",
    status: json["status"] ?? "",
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
    "status": status,
  };
}
