import 'dart:convert';

class Top10PoinResponseModel {
    final String message;
    final TopPoinSiswa data;

    Top10PoinResponseModel({
        required this.message,
        required this.data,
    });

    factory Top10PoinResponseModel.fromJson(String str) => Top10PoinResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10PoinResponseModel.fromMap(Map<String, dynamic> json) => Top10PoinResponseModel(
        message: json["message"],
        data: TopPoinSiswa.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class TopPoinSiswa {
    final List<Top10Poin> top10Poin;
    final List<TopSkor> topSkor;
    final List<Skor> skor;

    TopPoinSiswa({
        required this.top10Poin,
        required this.topSkor,
        required this.skor,
    });

    factory TopPoinSiswa.fromJson(String str) => TopPoinSiswa.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TopPoinSiswa.fromMap(Map<String, dynamic> json) => TopPoinSiswa(
        top10Poin: List<Top10Poin>.from(json["top10poin"].map((x) => Top10Poin.fromMap(x))),
        topSkor: List<TopSkor>.from(json["topSkor"].map((x) => TopSkor.fromMap(x))),
        skor: List<Skor>.from(json["skor"].map((x) => Skor.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "top10poin": List<dynamic>.from(top10Poin.map((x) => x.toMap())),
        "topSkor": List<dynamic>.from(topSkor.map((x) => x.toMap())),
        "skor": List<dynamic>.from(skor.map((x) => x.toMap())),
    };
}

class Skor {
    final int id;
    final String kode;
    final Deskripsi deskripsi;
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
        deskripsi: deskripsiValues.map[json["deskripsi"]]!,
        jenis: json["jenis"],
        skor: json["skor"],
        tindakan: json["tindakan"],
        tipe: tipeValues.map[json["tipe"]]!,
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "kode": kode,
        "deskripsi": deskripsiValues.reverse[deskripsi],
        "jenis": jenis,
        "skor": skor,
        "tindakan": tindakan,
        "tipe": tipeValues.reverse[tipe],
    };
}

enum Deskripsi {
    AKTIF_BERTANYA_PADA_GURU,
    EMPTY,
    SERAGAM
}

final deskripsiValues = EnumValues({
    "aktif bertanya pada guru": Deskripsi.AKTIF_BERTANYA_PADA_GURU,
    "": Deskripsi.EMPTY,
    "Seragam": Deskripsi.SERAGAM
});

enum Tipe {
    PELANGGARAN,
    REWARD
}

final tipeValues = EnumValues({
    "pelanggaran": Tipe.PELANGGARAN,
    "reward": Tipe.REWARD
});

class Top10Poin {
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

    Top10Poin({
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

    factory Top10Poin.fromJson(String str) => Top10Poin.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Top10Poin.fromMap(Map<String, dynamic> json) => Top10Poin(
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
