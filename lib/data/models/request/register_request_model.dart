import 'dart:convert';

class RegisterRequestModel {
  final String username;
  final String password;
  final String nama;
  final String email;
  final String npsn;
  final String instansi;
  final String alamat;
  final String marketing;
  final String deviceId;

  RegisterRequestModel({
    required this.username,
    required this.password,
    required this.nama,
    required this.email,
    required this.npsn,
    required this.instansi,
    required this.alamat,
    required this.marketing,
    required this.deviceId,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
      'nama': nama,
      'email': email,
      'npsn': npsn,
      'instansi': instansi,
      'alamat': alamat,
      'marketing': marketing,
      'device_id': deviceId,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      nama: map['nama'] ?? '',
      email: map['email'] ?? '',
      npsn: map['npsn'] ?? '',
      instansi: map['instansi'] ?? '',
      alamat: map['alamat'] ?? '',
      marketing: map['marketing'] ?? '',
      deviceId: map['device_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromJson(String source) =>
      RegisterRequestModel.fromMap(json.decode(source));
}
