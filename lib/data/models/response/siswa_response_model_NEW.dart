// import 'dart:convert';

// class SiswaResponseModel {
//     final String? message;
//     final Data? data;

//     SiswaResponseModel({
//         this.message,
//         this.data,
//     });

//     factory SiswaResponseModel.fromJson(String str) => SiswaResponseModel.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory SiswaResponseModel.fromMap(Map<String, dynamic> json) => SiswaResponseModel(
//         message: json["message"],
//         data: json["data"] == null ? null : Data.fromMap(json["data"]),
//     );

//     Map<String, dynamic> toMap() => {
//         "message": message,
//         "data": data?.toMap(),
//     };
// }

// class Data {
//     final Siswa? siswa;

//     Data({
//         this.siswa,
//     });

//     factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Data.fromMap(Map<String, dynamic> json) => Data(
//         siswa: json["siswa"] == null ? null : Siswa.fromMap(json["siswa"]),
//     );

//     Map<String, dynamic> toMap() => {
//         "siswa": siswa?.toMap(),
//     };
// }

// class Siswa {
//     final int? currentPage;
//     final List<Datum>? data;
//     final String? firstPageUrl;
//     final int? from;
//     final int? lastPage;
//     final String? lastPageUrl;
//     final List<Link>? links;
//     final dynamic nextPageUrl;
//     final String? path;
//     final int? perPage;
//     final dynamic prevPageUrl;
//     final int? to;
//     final int? total;

//     Siswa({
//         this.currentPage,
//         this.data,
//         this.firstPageUrl,
//         this.from,
//         this.lastPage,
//         this.lastPageUrl,
//         this.links,
//         this.nextPageUrl,
//         this.path,
//         this.perPage,
//         this.prevPageUrl,
//         this.to,
//         this.total,
//     });

//     factory Siswa.fromJson(String str) => Siswa.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Siswa.fromMap(Map<String, dynamic> json) => Siswa(
//         currentPage: json["current_page"],
//         data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
//         firstPageUrl: json["first_page_url"],
//         from: json["from"],
//         lastPage: json["last_page"],
//         lastPageUrl: json["last_page_url"],
//         links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromMap(x))),
//         nextPageUrl: json["next_page_url"],
//         path: json["path"],
//         perPage: json["per_page"],
//         prevPageUrl: json["prev_page_url"],
//         to: json["to"],
//         total: json["total"],
//     );

//     Map<String, dynamic> toMap() => {
//         "current_page": currentPage,
//         "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
//         "first_page_url": firstPageUrl,
//         "from": from,
//         "last_page": lastPage,
//         "last_page_url": lastPageUrl,
//         "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toMap())),
//         "next_page_url": nextPageUrl,
//         "path": path,
//         "per_page": perPage,
//         "prev_page_url": prevPageUrl,
//         "to": to,
//         "total": total,
//     };
// }

// class Datum {
//     final int? id;
//     final int? iduser;
//     final String? nis;
//     final String? nisn;
//     final String? nama;
//     final dynamic username;
//     final String? kelas;
//     final String? ext;
//     final String? jurusan;
//     final dynamic alamat;
//     final dynamic kota;
//     final dynamic hp;
//     final dynamic email;
//     final dynamic photo;
//     final dynamic ket;
//     final String? status;
//     final String? hapus;
//     final String? level;
//     final dynamic createdAt;
//     final dynamic updatedAt;

//     Datum({
//         this.id,
//         this.iduser,
//         this.nis,
//         this.nisn,
//         this.nama,
//         this.username,
//         this.kelas,
//         this.ext,
//         this.jurusan,
//         this.alamat,
//         this.kota,
//         this.hp,
//         this.email,
//         this.photo,
//         this.ket,
//         this.status,
//         this.hapus,
//         this.level,
//         this.createdAt,
//         this.updatedAt,
//     });

//     factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Datum.fromMap(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         iduser: json["iduser"],
//         nis: json["nis"],
//         nisn: json["nisn"],
//         nama: json["nama"],
//         username: json["username"],
//         kelas: json["kelas"],
//         ext: json["ext"],
//         jurusan: json["jurusan"],
//         alamat: json["alamat"],
//         kota: json["kota"],
//         hp: json["hp"],
//         email: json["email"],
//         photo: json["photo"],
//         ket: json["ket"],
//         status: json["status"],
//         hapus: json["hapus"],
//         level: json["level"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//     );

//     Map<String, dynamic> toMap() => {
//         "id": id,
//         "iduser": iduser,
//         "nis": nis,
//         "nisn": nisn,
//         "nama": nama,
//         "username": username,
//         "kelas": kelas,
//         "ext": ext,
//         "jurusan": jurusan,
//         "alamat": alamat,
//         "kota": kota,
//         "hp": hp,
//         "email": email,
//         "photo": photo,
//         "ket": ket,
//         "status": status,
//         "hapus": hapus,
//         "level": level,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//     };
// }

// class Link {
//     final String? url;
//     final String? label;
//     final int? page;
//     final bool? active;

//     Link({
//         this.url,
//         this.label,
//         this.page,
//         this.active,
//     });

//     factory Link.fromJson(String str) => Link.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory Link.fromMap(Map<String, dynamic> json) => Link(
//         url: json["url"],
//         label: json["label"],
//         page: json["page"],
//         active: json["active"],
//     );

//     Map<String, dynamic> toMap() => {
//         "url": url,
//         "label": label,
//         "page": page,
//         "active": active,
//     };
// }
