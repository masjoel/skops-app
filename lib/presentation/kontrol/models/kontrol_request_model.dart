import 'dart:convert';

class KontrolRequestModel {
  final DateTime tgl;
  final int idguru;
  final int idsiswa;
  final int idskor;
  final int semester;
  final String tindakan;

  KontrolRequestModel({
    required this.tgl,
    required this.idguru,
    required this.idsiswa,
    required this.idskor,
    required this.semester,
    required this.tindakan,
  });

  factory KontrolRequestModel.fromJson(String str) =>
      KontrolRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory KontrolRequestModel.fromMap(Map<String, dynamic> json) =>
      KontrolRequestModel(
        tgl: DateTime.parse(json["tgl"]),
        idguru: json["idguru"],
        idsiswa: json["idsiswa"],
        idskor: json["idskor"],
        semester: json["semester"],
        tindakan: json["tindakan"],
      );

  Map<String, dynamic> toMap() => {
    "tgl":
        "${tgl.year.toString().padLeft(4, '0')}-${tgl.month.toString().padLeft(2, '0')}-${tgl.day.toString().padLeft(2, '0')}",
    "idguru": idguru,
    "idsiswa": idsiswa,
    "idskor": idskor,
    "semester": semester,
    "tindakan": tindakan,
  };
}
