import 'dart:convert';

class RekapResponseModel {
    final String message;
    final DataRekap data;

    RekapResponseModel({
        required this.message,
        required this.data,
    });

    factory RekapResponseModel.fromJson(String str) => RekapResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RekapResponseModel.fromMap(Map<String, dynamic> json) => RekapResponseModel(
        message: json["message"],
        data: DataRekap.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data.toMap(),
    };
}

class DataRekap {
    final Rekap kontrol;

    DataRekap({
        required this.kontrol,
    });

    factory DataRekap.fromJson(String str) => DataRekap.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DataRekap.fromMap(Map<String, dynamic> json) => DataRekap(
        kontrol: Rekap.fromMap(json["kontrol"]),
    );

    Map<String, dynamic> toMap() => {
        "kontrol": kontrol.toMap(),
    };
}

class Rekap {
    final int currentPage;
    final List<RekapSingle> data;
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

    Rekap({
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

    factory Rekap.fromJson(String str) => Rekap.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Rekap.fromMap(Map<String, dynamic> json) => Rekap(
        currentPage: json["current_page"],
        data: List<RekapSingle>.from(json["data"].map((x) => RekapSingle.fromMap(x))),
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

class RekapSingle {
    final int idsiswa;
    final int totpoin;
    final int totreward;
    final int totSkor;
    final int totPemutihan;
    final String nama;
    final String kelas;
    final String jurusan;
    final String ext;
    final String nis;
    final String nisn;

    RekapSingle({
        required this.idsiswa,
        required this.totpoin,
        required this.totreward,
        required this.totSkor,
        required this.totPemutihan,
        required this.nama,
        required this.kelas,
        required this.jurusan,
        required this.ext,
        required this.nis,
        required this.nisn,
    });

    factory RekapSingle.fromJson(String str) => RekapSingle.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RekapSingle.fromMap(Map<String, dynamic> json) => RekapSingle(
        idsiswa: json["idsiswa"],
        totpoin: json["totpoin"],
        totreward: json["totreward"],
        totSkor: json["totSkor"],
        totPemutihan: json["totPemutihan"],
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
        "totPemutihan": totPemutihan,
        "nama": nama,
        "kelas": kelas,
        "jurusan": jurusan,
        "ext": ext,
        "nis": nis,
        "nisn": nisn,
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
