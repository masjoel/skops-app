import 'dart:convert';

class KontrolResponseModel {
  final String message;
  final DataKontrol data;

  KontrolResponseModel({required this.message, required this.data});

  factory KontrolResponseModel.fromJson(String str) =>
      KontrolResponseModel.fromMap(json.decode(str));

  factory KontrolResponseModel.fromMap(Map<String, dynamic> json) =>
      KontrolResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? DataKontrol.empty()
            : DataKontrol.fromMap(json["data"]),
      );
}

class DataKontrol {
  final List<Kontrol> kontrol;
  final int currentPage;
  final int lastPage;
  final int total;
  final int perPage;

  DataKontrol({
    required this.kontrol,
    required this.currentPage,
    required this.lastPage,
    required this.total,
    required this.perPage,
  });

  factory DataKontrol.empty() => DataKontrol(
    kontrol: [],
    currentPage: 1,
    lastPage: 1,
    total: 0,
    perPage: 20,
  );
  factory DataKontrol.fromMap(Map<String, dynamic> json) {
    final pagination = json["kontrol"];

    return DataKontrol(
      kontrol: pagination == null
          ? []
          : List<Kontrol>.from(
              pagination["data"].map((x) => Kontrol.fromMap(x)),
            ),
      currentPage: pagination?["current_page"] ?? 1,
      lastPage: pagination?["last_page"] ?? 1,
      total: pagination?["total"] ?? 0,
      perPage: pagination?["per_page"] ?? 20,
    );
  }
}

class Kontrol {
  final int id;
  final int idguru;
  final int idsiswa;
  final int idskor;
  final int iduser;
  final DateTime tgl;
  final String jenis;
  final String tipe;
  final int skor;
  final String tindakan;
  final String deskripsi;
  final DateTime jam;
  final String kelas;
  final String ext;
  final String jurusan;
  final int semester;
  final int isReset;
  final String namaguru;
  final String namasiswa;
  final String opr;

  Kontrol({
    required this.id,
    required this.idguru,
    required this.idsiswa,
    required this.idskor,
    required this.iduser,
    required this.tgl,
    required this.jenis,
    required this.tipe,
    required this.skor,
    required this.tindakan,
    required this.deskripsi,
    required this.jam,
    required this.kelas,
    required this.ext,
    required this.jurusan,
    required this.semester,
    required this.isReset,
    required this.namaguru,
    required this.namasiswa,
    required this.opr,
  });

factory Kontrol.fromMap(Map<String, dynamic> json) => Kontrol(
  id: json["id"] ?? 0,
  idguru: json["idguru"] ?? 0,
  idsiswa: json["idsiswa"] ?? 0,
  idskor: json["idskor"] ?? 0,
  iduser: json["iduser"] ?? 0,

  tgl: json["tgl"] == null 
      ? DateTime.fromMillisecondsSinceEpoch(0)
      : DateTime.parse(json["tgl"]),

  jenis: json["jenis"] ?? "",
  tipe: json["tipe"] ?? "",
  skor: json["skor"] ?? 0,
  tindakan: json["tindakan"] ?? "",
  deskripsi: json["deskripsi"] ?? "",

  jam: json["jam"] == null 
      ? DateTime.fromMillisecondsSinceEpoch(0)
      : DateTime.parse(json["jam"]),

  kelas: json["kelas"] ?? "",
  ext: json["ext"] ?? "",
  jurusan: json["jurusan"] ?? "",
  semester: json["semester"] ?? 0,
  isReset: json["is_reset"] ?? 0,
  namaguru: json["namaguru"] ?? "",
  namasiswa: json["namasiswa"] ?? "",
  opr: json["opr"] ?? "",
);
  Map<String, dynamic> toJson() => {
    "id": id,
    "idguru": idguru,
    "idsiswa": idsiswa,
    "idskor": idskor,
    "iduser": iduser,
    "tgl":
        "${tgl.year.toString().padLeft(4, '0')}-${tgl.month.toString().padLeft(2, '0')}-${tgl.day.toString().padLeft(2, '0')}",
    "jenis": jenis,
    "tipe": tipe,
    "skor": skor,
    "tindakan": tindakan,
    "deskripsi": deskripsi,
    "jam": jam.toIso8601String(),
    "kelas": kelas,
    "ext": ext,
    "jurusan": jurusan,
    "semester": semester,
    "is_reset": isReset,
    "namaguru": namaguru,
    "namasiswa": namasiswa,
    "opr": opr,
  };
}
