import 'dart:convert';

class ProspectResponseModel {
  final bool success;
  final String message;
  final List<Prospect> data;

  ProspectResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProspectResponseModel.fromJson(String str) =>
      ProspectResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProspectResponseModel.fromMap(Map<String, dynamic> json) =>
      ProspectResponseModel(
        success: json["success"],
        message: json["message"],
        data: List<Prospect>.from(json["data"].map((x) => Prospect.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Prospect {
  // final int? id;
  final String name;
  final String? email;
  final String roles;
  final String? resellerId;
  final String? bookingId;
  final DateTime createdAt;

  Prospect({
    // this.id,
    required this.name,
    this.email,
    required this.roles,
    this.resellerId,
    this.bookingId,
    required this.createdAt,
  });

  factory Prospect.fromJson(String str) => Prospect.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Prospect.fromMap(Map<String, dynamic> json) => Prospect(
        // id: json["id"],
        name: json["name"],
        email: json["email"] ?? '',
        roles: json["roles"],
        resellerId: json["reseller_id"] ?? '',
        bookingId: json["booking_id"] ?? '',
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "roles": roles,
        "reseller_id": resellerId,
        "booking_id": bookingId,
        "created_at": createdAt,
      };

  Prospect copyWith({
    // int? id,
    String? name,
    String? email,
    String? roles,
    String? resellerId,
    String? bookingId,
    DateTime? createdAt,
  }) {
    return Prospect(
      // id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      roles: roles ?? this.roles,
      resellerId: resellerId ?? this.resellerId,
      bookingId: bookingId ?? this.bookingId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Prospect &&
        // other.id == id &&
        other.name == name &&
        other.email == email &&
        other.roles == roles &&
        other.resellerId == resellerId &&
        other.bookingId == bookingId &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ roles.hashCode ^ resellerId.hashCode ^ bookingId.hashCode ^ createdAt.hashCode;
  }
}
