import 'dart:convert';

class ProfilResponseModel {
  final String message;
  final Profil profil;

  ProfilResponseModel({required this.message, required this.profil});

  factory ProfilResponseModel.fromJson(String str) =>
      ProfilResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProfilResponseModel.fromMap(Map<String, dynamic> json) =>
      ProfilResponseModel(
        message: json["message"],
        profil: Profil.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
    "message": message,
    "profil": profil.toMap(),
  };
}

class Profil {
  final int idx;
  final String namaClient;
  final String alamatClient;
  final String signature;
  final String email;
  final String logo;

  Profil({
    required this.idx,
    required this.namaClient,
    required this.alamatClient,
    required this.signature,
    required this.email,
    required this.logo,
  });

  factory Profil.fromJson(String str) => Profil.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Profil.fromMap(Map<String, dynamic> json) => Profil(
    idx: json["idx"],
    namaClient: json["NamaClient"],
    alamatClient: json["AlamatClient"],
    signature: json["Signature"],
    email: json["email"],
    logo: json["Logo"],
  );

  Map<String, dynamic> toMap() => {
    "idx": idx,
    "NamaClient": namaClient,
    "AlamatClient": alamatClient,
    "Signature": signature,
    "email": email,
    "Logo": logo,
  };
}

// import 'dart:convert';

// class ProfilResponseModel {
//   final String message;
//   final Data data;

//   ProfilResponseModel({required this.message, required this.data});

//   factory ProfilResponseModel.fromJson(String str) =>
//       ProfilResponseModel.fromMap(json.decode(str));
//   String toJson() => json.encode(toMap());
//   factory ProfilResponseModel.fromMap(Map<String, dynamic> json) =>
//       ProfilResponseModel(
//         message: json["message"],
//         data: Data.fromMap(json["data"]),
//       );

//   Map<String, dynamic> toMap() => {"message": message, "data": data.toMap()};
// }

// class Data {
//   final Perusahaan perusahaan;
//   Data({required this.perusahaan});
//   factory Data.fromJson(String str) => Data.fromMap(json.decode(str));
//   String toJson() => json.encode(toMap());
//   factory Data.fromMap(Map<String, dynamic> json) =>
//       Data(perusahaan: Perusahaan.fromMap(json["perusahaan"]));
//   Map<String, dynamic> toMap() => {"perusahaan": perusahaan.toMap()};
// }

// class Perusahaan {
//   final int idx;
//   final String namaClient;
//   final String alamatClient;
//   final String signature;
//   final String email;
//   final dynamic logo;

//   Perusahaan({
//     required this.idx,
//     required this.namaClient,
//     required this.alamatClient,
//     required this.signature,
//     required this.email,
//     required this.logo,
//   });

//   factory Perusahaan.fromJson(String str) =>
//       Perusahaan.fromMap(json.decode(str));
//   String toJson() => json.encode(toMap());
//   factory Perusahaan.fromMap(Map<String, dynamic> json) => Perusahaan(
//     idx: json["idx"],
//     namaClient: json["NamaClient"],
//     alamatClient: json["AlamatClient"],
//     signature: json["Signature"],
//     email: json["email"],
//     logo: json["Logo"],
//   );

//   Map<String, dynamic> toMap() => {
//     "idx": idx,
//     "NamaClient": namaClient,
//     "AlamatClient": alamatClient,
//     "Signature": signature,
//     "email": email,
//     "Logo": logo,
//   };
// }
