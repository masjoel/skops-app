import 'dart:convert';

class RekapDetailResponseModel {
  final String message;
  final DataRekapDetail data;

  RekapDetailResponseModel({required this.message, required this.data});

  factory RekapDetailResponseModel.fromJson(String str) =>
      RekapDetailResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RekapDetailResponseModel.fromMap(Map<String, dynamic> json) =>
      RekapDetailResponseModel(
        message: json["message"],
        data: DataRekapDetail.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
}

class DataRekapDetail {
  final Rekapdetail rekapdetail;

  DataRekapDetail({required this.rekapdetail});

  factory DataRekapDetail.fromJson(String str) =>
      DataRekapDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataRekapDetail.fromMap(Map<String, dynamic> json) =>
      DataRekapDetail(rekapdetail: Rekapdetail.fromMap(json["rekapdetail"]));

  Map<String, dynamic> toMap() => {"rekapdetail": rekapdetail.toMap()};
}

class Rekapdetail {
  final int currentPage;
  final List<RekapDetailSingle> data;
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

  Rekapdetail({
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

  factory Rekapdetail.fromJson(String str) =>
      Rekapdetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rekapdetail.fromMap(Map<String, dynamic> json) => Rekapdetail(
    currentPage: json["current_page"],
    data: List<RekapDetailSingle>.from(
      json["data"].map((x) => RekapDetailSingle.fromMap(x)),
    ),
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

class RekapDetailSingle {
  final int id;
  final int idsiswa;
  final int totpoin;
  final int totreward;
  final DateTime tgl;
  final String jenis;
  final String tipe;
  final int skor;
  final int semester;
  final String deskripsi;
  final String tindakan;
  final String nama;
  final DateTime jam;

  RekapDetailSingle({
    required this.id,
    required this.idsiswa,
    required this.totpoin,
    required this.totreward,
    required this.tgl,
    required this.jenis,
    required this.tipe,
    required this.skor,
    required this.semester,
    required this.deskripsi,
    required this.tindakan,
    required this.nama,
    required this.jam,
  });

  factory RekapDetailSingle.fromJson(String str) =>
      RekapDetailSingle.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RekapDetailSingle.fromMap(Map<String, dynamic> json) =>
      RekapDetailSingle(
        id: json["id"],
        idsiswa: json["idsiswa"],
        totpoin: json["totpoin"],
        totreward: json["totreward"],
        tgl: DateTime.parse(json["tgl"]),
        jenis: json["jenis"],
        tipe: json["tipe"],
        skor: json["skor"],
        semester: json["semester"],
        deskripsi: json["deskripsi"],
        tindakan: json["tindakan"],
        nama: json["nama"],
        jam: json["jam"] == null
            ? DateTime.fromMillisecondsSinceEpoch(0)
            : DateTime.parse(json["jam"]),
      );

  Map<String, dynamic> toMap() => {
    "id": id,
    "idsiswa": idsiswa,
    "totpoin": totpoin,
    "totreward": totreward,
    "tgl":
        "${tgl.year.toString().padLeft(4, '0')}-${tgl.month.toString().padLeft(2, '0')}-${tgl.day.toString().padLeft(2, '0')}",
    "jenis": jenis,
    "tipe": tipe,
    "skor": skor,
    "semester": semester,
    "deskripsi": deskripsi,
    "tindakan": tindakan,
    "nama": nama,
    "jam": jam.toIso8601String(),
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
