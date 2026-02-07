import 'dart:convert';

class WalikelasResponseModel {
  final String message;
  final DataWalikelas data;

  WalikelasResponseModel({required this.message, required this.data});

  factory WalikelasResponseModel.fromJson(String str) =>
      WalikelasResponseModel.fromMap(json.decode(str));

  factory WalikelasResponseModel.fromMap(Map<String, dynamic> json) =>
      WalikelasResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataWalikelas.empty()
            : DataWalikelas.fromMap(json["data"]),
      );
}

class DataWalikelas {
  final List<Walikelas> walikelas;
  final int currentPage;
  final int lastPage;
  final int total;
  final int perPage;

  DataWalikelas({
    required this.walikelas,
    required this.currentPage,
    required this.lastPage,
    required this.total,
    required this.perPage,
  });

  factory DataWalikelas.empty() =>
      DataWalikelas(walikelas: [], currentPage: 1, lastPage: 1, total: 0, perPage: 20);

  factory DataWalikelas.fromMap(Map<String, dynamic> json) {
    final pagination = json["walikelas"];

    return DataWalikelas(
      walikelas: pagination == null
          ? []
          : List<Walikelas>.from(pagination["data"].map((x) => Walikelas.fromMap(x))),
      currentPage: pagination?["current_page"] ?? 1,
      lastPage: pagination?["last_page"] ?? 1,
      total: pagination?["total"] ?? 0,
      perPage: pagination?["per_page"] ?? 20,
    );
  }
}

class Walikelas {
  final int id;
  final int iduser;
  final int idguru;
  final String nip;
  final String nama;
  final String kelas;
  final String ext;
  final String? jurusan;
  final dynamic photo;
  final String tahun;
  final dynamic ket;

  Walikelas({
    required this.id,
    required this.iduser,
    required this.idguru,
    required this.nip,
    required this.nama,
    required this.kelas,
    required this.ext,
    required this.jurusan,
    required this.photo,
    required this.tahun,
    required this.ket,
  });

  factory Walikelas.fromMap(Map<String, dynamic> json) => Walikelas(
    id: json["id"] ?? 0,
    iduser: json["iduser"] ?? 0,
    idguru: json["idguru"] ?? 0,
    nip: json["nip"] ?? "",
    nama: json["nama"] ?? "",
    kelas: json["kelas"] ?? "",
    ext: json["ext"] ?? "",
    jurusan: json["jurusan"] ?? "",
    photo: json["photo"] ?? "",
    tahun: json["tahun"] ?? "",
    ket: json["ket"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "iduser": iduser,
    "idguru": idguru,
    "nip": nip,
    "nama": nama,
    "kelas": kelas,
    "ext": ext,
    "jurusan": jurusan,
    "photo": photo,
    "tahun": tahun,
    "ket": ket,
  };
}
