import 'dart:convert';

class DeviceIdResponseModel {
    final String? message;

    DeviceIdResponseModel({
        this.message,
    });

    factory DeviceIdResponseModel.fromJson(String str) => DeviceIdResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DeviceIdResponseModel.fromMap(Map<String, dynamic> json) => DeviceIdResponseModel(
        message: json["message"],
    );

    Map<String, dynamic> toMap() => {
        "message": message,
    };
}
