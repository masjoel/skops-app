import 'dart:convert';

class KontrolResponseModel {
    final String message;
    final Data data;

    KontrolResponseModel({
        required this.message,
        required this.data,
    });

    factory KontrolResponseModel.fromJson(String str) => KontrolResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory KontrolResponseModel.fromMap(Map<String, dynamic> json) => KontrolResponseModel(
        message: json["message"],
        data: Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class Data {
    final Kontrol kontrol;

    Data({
        required this.kontrol,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        kontrol: Kontrol.fromMap(json["kontrol"]),
    );

    Map<String, dynamic> toMap() => {
        "kontrol": kontrol.toMap(),
    };
}

class Kontrol {
    final int currentPage;
    final List<SingleKontrol> data;
    final String firstPageUrl;
    final int from;
    final int lastPage;
    final String lastPageUrl;
    final List<Link> links;
    final dynamic nextPageUrl;
    final String path;
    final int perPage;
    final dynamic prevPageUrl;
    final int to;
    final int total;

    Kontrol({
        required this.currentPage,
        required this.data,
        required this.firstPageUrl,
        required this.from,
        required this.lastPage,
        required this.lastPageUrl,
        required this.links,
        required this.nextPageUrl,
        required this.path,
        required this.perPage,
        required this.prevPageUrl,
        required this.to,
        required this.total,
    });

    factory Kontrol.fromJson(String str) => Kontrol.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Kontrol.fromMap(Map<String, dynamic> json) => Kontrol(
        currentPage: json["current_page"],
        data: List<SingleKontrol>.from(json["data"].map((x) => SingleKontrol.fromMap(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromMap(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
    );

    Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toMap())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
    };
}

class SingleKontrol {
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

    SingleKontrol({
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

    factory SingleKontrol.fromJson(String str) => SingleKontrol.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SingleKontrol.fromMap(Map<String, dynamic> json) => SingleKontrol(
        id: json["id"],
        idguru: json["idguru"],
        idsiswa: json["idsiswa"],
        idskor: json["idskor"],
        iduser: json["iduser"],
        tgl: DateTime.parse(json["tgl"]),
        jenis: json["jenis"],
        tipe: json["tipe"],
        skor: json["skor"],
        tindakan: json["tindakan"],
        deskripsi: json["deskripsi"],
        jam: DateTime.parse(json["jam"]),
        kelas: json["kelas"],
        ext: json["ext"],
        jurusan: json["jurusan"],
        semester: json["semester"],
        isReset: json["is_reset"],
        namaguru: json["namaguru"],
        namasiswa: json["namasiswa"],
        opr: json["opr"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "idguru": idguru,
        "idsiswa": idsiswa,
        "idskor": idskor,
        "iduser": iduser,
        "tgl": "${tgl.year.toString().padLeft(4, '0')}-${tgl.month.toString().padLeft(2, '0')}-${tgl.day.toString().padLeft(2, '0')}",
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

class Link {
    final String? url;
    final String label;
    final int? page;
    final bool active;

    Link({
        required this.url,
        required this.label,
        required this.page,
        required this.active,
    });

    factory Link.fromJson(String str) => Link.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Link.fromMap(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        page: json["page"],
        active: json["active"],
    );

    Map<String, dynamic> toMap() => {
        "url": url,
        "label": label,
        "page": page,
        "active": active,
    };
}
