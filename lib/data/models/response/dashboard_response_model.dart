import 'dart:convert';

class DashboardResponseModel {
    final String message;
    final Dashboard data;

    DashboardResponseModel({
        required this.message,
        required this.data,
    });

    factory DashboardResponseModel.fromJson(String str) => DashboardResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DashboardResponseModel.fromMap(Map<String, dynamic> json) => DashboardResponseModel(
        message: json["message"],
        data: Dashboard.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class Dashboard {
    final List<String> bln;
    final List<String> namabln;
    final List<String> barcolor;
    final int jGuru;
    final int jSiswa;
    final int jJenis;
    final int jPoin;
    final int jRew;
    final List<Kontrol> kontrol;
    final List<TopSkor> topSkor;
    final List<Skor> skor;
    final String title;
    final Klien klien;

    Dashboard({
        required this.bln,
        required this.namabln,
        required this.barcolor,
        required this.jGuru,
        required this.jSiswa,
        required this.jJenis,
        required this.jPoin,
        required this.jRew,
        required this.kontrol,
        required this.topSkor,
        required this.skor,
        required this.title,
        required this.klien,
    });

    factory Dashboard.fromJson(String str) => Dashboard.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Dashboard.fromMap(Map<String, dynamic> json) => Dashboard(
        bln: List<String>.from(json["bln"].map((x) => x)),
        namabln: List<String>.from(json["namabln"].map((x) => x)),
        barcolor: List<String>.from(json["barcolor"].map((x) => x)),
        jGuru: json["jGuru"],
        jSiswa: json["jSiswa"],
        jJenis: json["jJenis"],
        jPoin: json["jPoin"],
        jRew: json["jRew"],
        kontrol: List<Kontrol>.from(json["kontrol"].map((x) => Kontrol.fromMap(x))),
        topSkor: List<TopSkor>.from(json["topSkor"].map((x) => TopSkor.fromMap(x))),
        skor: List<Skor>.from(json["skor"].map((x) => Skor.fromMap(x))),
        title: json["title"],
        klien: Klien.fromMap(json["klien"]),
    );

    Map<String, dynamic> toMap() => {
        "bln": List<dynamic>.from(bln.map((x) => x)),
        "namabln": List<dynamic>.from(namabln.map((x) => x)),
        "barcolor": List<dynamic>.from(barcolor.map((x) => x)),
        "jGuru": jGuru,
        "jSiswa": jSiswa,
        "jJenis": jJenis,
        "jPoin": jPoin,
        "jRew": jRew,
        "kontrol": List<dynamic>.from(kontrol.map((x) => x.toMap())),
        "topSkor": List<dynamic>.from(topSkor.map((x) => x.toMap())),
        "skor": List<dynamic>.from(skor.map((x) => x.toMap())),
        "title": title,
        "klien": klien.toMap(),
    };
}

class Klien {
    final int idx;
    final dynamic iduser;
    final String namaClient;
    final String tampil;
    final String namaApp;
    final String versiApp;
    final String descApp;
    final String alamatClient;
    final String signature;
    final String email;
    final dynamic logo;
    final DateTime jam;
    final dynamic mcad;
    final dynamic init;
    final DateTime createdAt;
    final DateTime updatedAt;

    Klien({
        required this.idx,
        required this.iduser,
        required this.namaClient,
        required this.tampil,
        required this.namaApp,
        required this.versiApp,
        required this.descApp,
        required this.alamatClient,
        required this.signature,
        required this.email,
        required this.logo,
        required this.jam,
        required this.mcad,
        required this.init,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Klien.fromJson(String str) => Klien.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Klien.fromMap(Map<String, dynamic> json) => Klien(
        idx: json["idx"],
        iduser: json["iduser"],
        namaClient: json["NamaClient"],
        tampil: json["tampil"],
        namaApp: json["NamaApp"],
        versiApp: json["VersiApp"],
        descApp: json["DescApp"],
        alamatClient: json["AlamatClient"],
        signature: json["Signature"],
        email: json["email"],
        logo: json["Logo"],
        jam: DateTime.parse(json["jam"]),
        mcad: json["mcad"],
        init: json["init"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "idx": idx,
        "iduser": iduser,
        "NamaClient": namaClient,
        "tampil": tampil,
        "NamaApp": namaApp,
        "VersiApp": versiApp,
        "DescApp": descApp,
        "AlamatClient": alamatClient,
        "Signature": signature,
        "email": email,
        "Logo": logo,
        "jam": jam.toIso8601String(),
        "mcad": mcad,
        "init": init,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Kontrol {
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

    Kontrol({
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

    factory Kontrol.fromJson(String str) => Kontrol.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Kontrol.fromMap(Map<String, dynamic> json) => Kontrol(
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

class Skor {
    final int id;
    final String kode;
    final String deskripsi;
    final String jenis;
    final int skor;
    final String tindakan;
    final Tipe tipe;

    Skor({
        required this.id,
        required this.kode,
        required this.deskripsi,
        required this.jenis,
        required this.skor,
        required this.tindakan,
        required this.tipe,
    });

    factory Skor.fromJson(String str) => Skor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Skor.fromMap(Map<String, dynamic> json) => Skor(
        id: json["id"],
        kode: json["kode"],
        deskripsi: json["deskripsi"],
        jenis: json["jenis"],
        skor: json["skor"],
        tindakan: json["tindakan"],
        tipe: tipeValues.map[json["tipe"]]!,
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "kode": kode,
        "deskripsi": deskripsi,
        "jenis": jenis,
        "skor": skor,
        "tindakan": tindakan,
        "tipe": tipeValues.reverse[tipe],
    };
}

enum Tipe {
    PELANGGARAN,
    REWARD
}

final tipeValues = EnumValues({
    "pelanggaran": Tipe.PELANGGARAN,
    "reward": Tipe.REWARD
});

class TopSkor {
    final int idskor;
    final String jenis;
    final int skor;
    final Tipe tipe;
    final int jumlah;

    TopSkor({
        required this.idskor,
        required this.jenis,
        required this.skor,
        required this.tipe,
        required this.jumlah,
    });

    factory TopSkor.fromJson(String str) => TopSkor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TopSkor.fromMap(Map<String, dynamic> json) => TopSkor(
        idskor: json["idskor"],
        jenis: json["jenis"],
        skor: json["skor"],
        tipe: tipeValues.map[json["tipe"]]!,
        jumlah: json["jumlah"],
    );

    Map<String, dynamic> toMap() => {
        "idskor": idskor,
        "jenis": jenis,
        "skor": skor,
        "tipe": tipeValues.reverse[tipe],
        "jumlah": jumlah,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
