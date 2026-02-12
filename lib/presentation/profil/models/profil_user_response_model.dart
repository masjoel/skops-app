import 'dart:convert';

class ProfilUserResponseModel {
    final String message;
    final ProfilUser profiluser;

    ProfilUserResponseModel({
        required this.message,
        required this.profiluser,
    });

    factory ProfilUserResponseModel.fromJson(String str) => ProfilUserResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfilUserResponseModel.fromMap(Map<String, dynamic> json) => ProfilUserResponseModel(
        message: json["message"],
        profiluser: ProfilUser.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": profiluser.toMap(),
    };
}

class ProfilUser {
    final int idx;
    final String username;
    final String password;
    final String nama;
    final dynamic photo;
    final dynamic q1;
    final dynamic q2;
    final dynamic a1;
    final dynamic a2;

    ProfilUser({
        required this.idx,
        required this.username,
        required this.password,
        required this.nama,
        required this.photo,
        required this.q1,
        required this.q2,
        required this.a1,
        required this.a2,
    });

    factory ProfilUser.fromJson(String str) => ProfilUser.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfilUser.fromMap(Map<String, dynamic> json) => ProfilUser(
        idx: json["idx"],
        username: json["username"],
        password: json["password"],
        nama: json["nama"],
        photo: json["photo"],
        q1: json["q1"],
        q2: json["q2"],
        a1: json["a1"],
        a2: json["a2"],
    );

    Map<String, dynamic> toMap() => {
        "idx": idx,
        "username": username,
        "password": password,
        "nama": nama,
        "photo": photo,
        "q1": q1,
        "q2": q2,
        "a1": a1,
        "a2": a2,
    };
}