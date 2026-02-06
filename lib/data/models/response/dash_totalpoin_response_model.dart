import 'dart:convert';

class DashTotalPoinResponseModel {
    final String message;
    final TotalPoin data;

    DashTotalPoinResponseModel({
        required this.message,
        required this.data,
    });

    factory DashTotalPoinResponseModel.fromJson(String str) => DashTotalPoinResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DashTotalPoinResponseModel.fromMap(Map<String, dynamic> json) => DashTotalPoinResponseModel(
        message: json["message"],
        data: TotalPoin.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class TotalPoin {
    final int jGuru;
    final int jWaliKelas;
    final int jSiswa;
    final int jJenis;
    final int jPoin;
    final int jRew;
    final Klien klien;

    TotalPoin({
        required this.jGuru,
        required this.jWaliKelas,
        required this.jSiswa,
        required this.jJenis,
        required this.jPoin,
        required this.jRew,
        required this.klien,
    });

    factory TotalPoin.fromJson(String str) => TotalPoin.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TotalPoin.fromMap(Map<String, dynamic> json) => TotalPoin(
        jGuru: json["jGuru"],
        jWaliKelas: json["jWaliKelas"],
        jSiswa: json["jSiswa"],
        jJenis: json["jJenis"],
        jPoin: json["jPoin"],
        jRew: json["jRew"],
        klien: Klien.fromMap(json["klien"]),
    );

    Map<String, dynamic> toMap() => {
        "jGuru": jGuru,
        "jWaliKelas": jWaliKelas,
        "jSiswa": jSiswa,
        "jJenis": jJenis,
        "jPoin": jPoin,
        "jRew": jRew,
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
