import 'dart:convert';

class UserRequestModel {
    final String username;
    final String password;
    final String level;
    final int idopr;
    final String nama;
    final String status;

    UserRequestModel({
        required this.username,
        required this.password,
        required this.level,
        required this.idopr,
        required this.nama,
        required this.status,
    });

    factory UserRequestModel.fromJson(String str) => UserRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserRequestModel.fromMap(Map<String, dynamic> json) => UserRequestModel(
        username: json["username"],
        password: json["password"],
        level: json["level"],
        idopr: json["idopr"],
        nama: json["nama"],
        status: json["status"],
    );

    Map<String, dynamic> toMap() => {
        "username": username,
        "password": password,
        "level": level,
        "idopr": idopr,
        "nama": nama,
        "status": status,
    };
}
