import 'dart:convert';

class ChangePasswordRequestModel {
  final String email;
  final String name;
  final String newpassword;

  ChangePasswordRequestModel({
    required this.email,
    required this.name,
    required this.newpassword,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'newpassword': newpassword,
    };
  }

  factory ChangePasswordRequestModel.fromMap(Map<String, dynamic> map) {
    return ChangePasswordRequestModel(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      newpassword: map['newpassword'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChangePasswordRequestModel.fromJson(String source) =>
      ChangePasswordRequestModel.fromMap(json.decode(source));
}
