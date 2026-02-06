import 'dart:convert';

class GuruResponseModel {
    final String message;
    final DataGuru data;

    GuruResponseModel({
        required this.message,
        required this.data,
    });

    factory GuruResponseModel.fromJson(String str) => GuruResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GuruResponseModel.fromMap(Map<String, dynamic> json) => GuruResponseModel(
        message: json["message"],
        data: DataGuru.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class DataGuru {
    final List<Guru> guru;

    DataGuru({
        required this.guru,
    });

    factory DataGuru.fromJson(String str) => DataGuru.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DataGuru.fromMap(Map<String, dynamic> json) => DataGuru(
        guru: List<Guru>.from(json["guru"].map((x) => Guru.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "guru": List<dynamic>.from(guru.map((x) => x.toMap())),
    };
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
    final String hapus;
    final String level;
    final DateTime? createdAt;
    final DateTime? updatedAt;

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
        required this.hapus,
        required this.level,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Guru.fromJson(String str) => Guru.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Guru.fromMap(Map<String, dynamic> json) => Guru(
        id: json["id"],
        iduser: json["iduser"],
        nis: json["nis"],
        nisn: json["nisn"],
        nama: json["nama"],
        username: json["username"],
        kelas: json["kelas"],
        ext: json["ext"],
        jurusan: json["jurusan"],
        alamat: json["alamat"],
        kota: json["kota"],
        hp: json["hp"],
        email: json["email"],
        photo: json["photo"],
        ket: json["ket"],
        status: json["status"],
        hapus: json["hapus"],
        level: json["level"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
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
        "hapus": hapus,
        "level": level,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
