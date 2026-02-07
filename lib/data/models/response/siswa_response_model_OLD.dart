// import 'dart:convert';

// class SiswaResponseModel {
//   final String message;
//   final DataSiswa data;

//   SiswaResponseModel({required this.message, required this.data});

//   factory SiswaResponseModel.fromJson(String str) =>
//       SiswaResponseModel.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory SiswaResponseModel.fromMap(Map<String, dynamic> json) =>
//       SiswaResponseModel(
//         message: json["message"],
//         data: json["data"] == null
//             ? DataSiswa(siswa: [])
//             : DataSiswa.fromMap(json["data"]),
//       );

//   Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
// }

// class DataSiswa {
//   final List<Siswa> siswa;

//   DataSiswa({required this.siswa});

//   factory DataSiswa.fromJson(String str) => DataSiswa.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory DataSiswa.fromMap(Map<String, dynamic> json) => DataSiswa(
//     siswa: json["siswa"] == null
//         ? []
//         : List<Siswa>.from(json["siswa"].map((x) => Siswa.fromMap(x))),
//   );

//   Map<String, dynamic> toMap() => {
//     "siswa": List<dynamic>.from(siswa.map((x) => x.toMap())),
//   };
// }

// class Siswa {
//   final int id;
//   final int iduser;
//   final String nis;
//   final String nisn;
//   final String nama;
//   final dynamic username;
//   final String kelas;
//   final String ext;
//   final String jurusan;
//   final dynamic alamat;
//   final dynamic kota;
//   final dynamic hp;
//   final dynamic email;
//   final dynamic photo;
//   final dynamic ket;

//   Siswa({
//     required this.id,
//     required this.iduser,
//     required this.nis,
//     required this.nisn,
//     required this.nama,
//     required this.username,
//     required this.kelas,
//     required this.ext,
//     required this.jurusan,
//     required this.alamat,
//     required this.kota,
//     required this.hp,
//     required this.email,
//     required this.photo,
//     required this.ket,
//   });

//   factory Siswa.fromJson(String str) => Siswa.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory Siswa.fromMap(Map<String, dynamic> json) => Siswa(
//     id: json["id"],
//     iduser: json["iduser"],
//     nis: json["nis"],
//     nisn: json["nisn"],
//     nama: json["nama"],
//     username: json["username"],
//     kelas: json["kelas"],
//     ext: json["ext"],
//     jurusan: json["jurusan"],
//     alamat: json["alamat"],
//     kota: json["kota"],
//     hp: json["hp"],
//     email: json["email"],
//     photo: json["photo"],
//     ket: json["ket"],
//   );

//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "iduser": iduser,
//     "nis": nis,
//     "nisn": nisn,
//     "nama": nama,
//     "username": username,
//     "kelas": kelas,
//     "ext": ext,
//     "jurusan": jurusan,
//     "alamat": alamat,
//     "kota": kota,
//     "hp": hp,
//     "email": email,
//     "photo": photo,
//     "ket": ket,
//   };
// }
