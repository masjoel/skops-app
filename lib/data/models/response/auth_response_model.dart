import 'dart:convert';

class AuthResponseModel {
    final String status;
    final String token;
    final User user;

    AuthResponseModel({
        required this.status,
        required this.token,
        required this.user,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        status: json["status"],
        token: json["token"],
        user: User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "token": token,
        "user": user.toMap(),
    };
}

class User {
    final int idx;
    final int idprsh;
    final dynamic idopr;
    final String username;
    final String password;
    final String nama;
    final String level;
    final String status;
    final String photo;
    final String email;
    final String telp;
    final String q1;
    final String q2;
    final String a1;
    final String a2;
    final DateTime jam;
    final String akses;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String passwordNew;

    User({
        required this.idx,
        required this.idprsh,
        required this.idopr,
        required this.username,
        required this.password,
        required this.nama,
        required this.level,
        required this.status,
        required this.photo,
        required this.email,
        required this.telp,
        required this.q1,
        required this.q2,
        required this.a1,
        required this.a2,
        required this.jam,
        required this.akses,
        required this.createdAt,
        required this.updatedAt,
        required this.passwordNew,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        idx: json["idx"],
        idprsh: json["idprsh"],
        idopr: json["idopr"],
        username: json["username"],
        password: json["password"],
        nama: json["nama"],
        level: json["level"],
        status: json["status"],
        photo: json["photo"],
        email: json["email"],
        telp: json["telp"],
        q1: json["q1"],
        q2: json["q2"],
        a1: json["a1"],
        a2: json["a2"],
        jam: DateTime.parse(json["jam"]),
        akses: json["akses"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        passwordNew: json["password_new"],
    );

    Map<String, dynamic> toMap() => {
        "idx": idx,
        "idprsh": idprsh,
        "idopr": idopr,
        "username": username,
        "password": password,
        "nama": nama,
        "level": level,
        "status": status,
        "photo": photo,
        "email": email,
        "telp": telp,
        "q1": q1,
        "q2": q2,
        "a1": a1,
        "a2": a2,
        "jam": jam.toIso8601String(),
        "akses": akses,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "password_new": passwordNew,
    };
}
