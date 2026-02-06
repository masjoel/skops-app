// // import 'package:meta/meta.dart';
// import 'dart:convert';

// class AuthResponseModel {
//   final User user;
//   final String token;

//   AuthResponseModel({
//     required this.user,
//     required this.token,
//   });

//   factory AuthResponseModel.fromJson(String str) =>
//       AuthResponseModel.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory AuthResponseModel.fromMap(Map<String, dynamic> json) =>
//       AuthResponseModel(
//         user: User.fromMap(json["user"]),
//         token: json["token"],
//       );

//   Map<String, dynamic> toMap() => {
//         "user": user.toMap(),
//         "token": token,
//       };
// }

// class User {
//   final int id;
//   final String name;
//   final String email;
//   final String phone;
//   final String roles;
//   final String deviceId;
//   final String bookingId;
//   final String resellerId;
//   final DateTime createdAt;
//   final DateTime updatedAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.phone,
//     required this.roles,
//     required this.deviceId,
//     required this.bookingId,
//     required this.resellerId,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   factory User.fromJson(String str) => User.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory User.fromMap(Map<String, dynamic> json) => User(
//         id: json["id"],
//         name: json["name"],
//         email: json["email"],
//         phone: json["phone"] ?? "",
//         roles: json["roles"],
//         deviceId: json["device_id"] ?? "",
//         bookingId: json["booking_id"] ?? "",
//         resellerId: json["reseller_id"] ?? "",
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//       );

//   Map<String, dynamic> toMap() => {
//         "id": id,
//         "name": name,
//         "email": email,
//         "phone": phone,
//         "roles": roles,
//         "device_id": deviceId,
//         "booking_id": bookingId,
//         "reseller_id": resellerId,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//       };
// }
