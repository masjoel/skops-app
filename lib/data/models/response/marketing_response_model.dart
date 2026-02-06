import 'dart:convert';

class MarketingResponseModel {
    String? marketing;

    MarketingResponseModel({
        this.marketing,
    });

    factory MarketingResponseModel.fromJson(String str) => MarketingResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MarketingResponseModel.fromMap(Map<String, dynamic> json) => MarketingResponseModel(
        marketing: json["marketing"],
    );

    Map<String, dynamic> toMap() => {
        "marketing": marketing,
    };
}
