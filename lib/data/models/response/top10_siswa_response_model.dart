import 'dart:convert';

class Top10SiswaResponseModel {
    final String message;
    final List<Top10Siswa> data;

    Top10SiswaResponseModel({
        required this.message,
        required this.data,
    });

    factory Top10SiswaResponseModel.fromJson(String str) => Top10SiswaResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10SiswaResponseModel.fromMap(Map<String, dynamic> json) => Top10SiswaResponseModel(
        message: json["message"],
        data: List<Top10Siswa>.from(json["data"].map((x) => Top10Siswa.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class Top10Siswa {
    final int idsiswa;
    final int totpoin;
    final int totreward;
    final int totSkor;
    final String nama;
    final String kelas;
    final String jurusan;
    final String ext;
    final String nis;
    final String nisn;

    Top10Siswa({
        required this.idsiswa,
        required this.totpoin,
        required this.totreward,
        required this.totSkor,
        required this.nama,
        required this.kelas,
        required this.jurusan,
        required this.ext,
        required this.nis,
        required this.nisn,
    });

    factory Top10Siswa.fromJson(String str) => Top10Siswa.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10Siswa.fromMap(Map<String, dynamic> json) => Top10Siswa(
        idsiswa: json["idsiswa"],
        totpoin: json["totpoin"],
        totreward: json["totreward"],
        totSkor: json["totSkor"],
        nama: json["nama"],
        kelas: json["kelas"],
        jurusan: json["jurusan"],
        ext: json["ext"],
        nis: json["nis"],
        nisn: json["nisn"],
    );

    Map<String, dynamic> toMap() => {
        "idsiswa": idsiswa,
        "totpoin": totpoin,
        "totreward": totreward,
        "totSkor": totSkor,
        "nama": nama,
        "kelas": kelas,
        "jurusan": jurusan,
        "ext": ext,
        "nis": nis,
        "nisn": nisn,
    };
}
