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