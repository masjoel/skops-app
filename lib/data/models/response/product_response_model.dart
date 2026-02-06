import 'dart:convert';

class ProductResponseModel {
  final bool success;
  final String message;
  final List<Product> data;

  ProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProductResponseModel.fromJson(String str) =>
      ProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductResponseModel(
        success: json["success"],
        message: json["message"],
        data: List<Product>.from(json["data"].map((x) => Product.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Product {
  final int? id;
  final int? userId;
  final int? productId;
  final String name;
  final String? description;
  final int hpp;
  final int price;
  final int stock;
  final String category;
  final int? categoryId;
  final int discount;
  final String satuan;
  final int? satuanId;
  final String? image;
  final bool isBestSeller;
  final bool isDiscount;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? productCode;
  final String uuid;
  final int isSynced;
  final String? deletedAt;

  Product(
      {this.id,
      this.userId,
      this.productId,
      required this.name,
      this.description,
      required this.hpp,
      required this.price,
      required this.stock,
      required this.category,
      this.categoryId,
      required this.discount,
      required this.satuan,
      this.satuanId,
      this.image,
      this.isBestSeller = false,
      this.isDiscount = false,
      this.createdAt,
      this.updatedAt,
      this.productCode,
      required this.uuid,
      this.isSynced = 0,
      this.deletedAt});

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        name: json["name"],
        description: json["description"] ?? '',
        hpp: json["hpp"],
        price: json["price"],
        stock: json["stock"] ?? 0,
        category: json["category"],
        categoryId: json["category_id"],
        discount: json["discount"] ?? 0,
        satuan: json["satuan"],
        satuanId: json["satuan_id"],
        image: json["image"] ?? '',
        isBestSeller: json["is_best_seller"] == 1 ? true : false,
        isDiscount: json["is_discount"] == 1 ? true : false,
        productCode: json["product_code"] ?? '',
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        //     : DateTime.parse(json["updated_at"].toString()),
        uuid: json["uuid"] ?? '',
        isSynced: 1,
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "hpp": hpp,
        "price": price,
        "stock": stock,
        "category": category,
        "category_id": categoryId,
        "discount": discount,
        "satuan": satuan,
        "satuan_id": satuanId,
        "image": image,
        "is_best_seller": isBestSeller ? 1 : 0,
        "is_discount": isDiscount ? 1 : 0,
        "product_id": productId,
        "user_id": userId,
        "product_code": productCode,
        "updated_at": updatedAt?.toIso8601String(),
        "uuid": uuid,
        "is_sync": isSynced,
        "deleted_at": deletedAt,
      };
  Map<String, dynamic> toLocalMap() => {
        "name": name,
        "hpp": hpp,
        "price": price,
        "stock": stock,
        "category": category,
        "category_id": categoryId,
        "discount": discount,
        "satuan": satuan,
        "satuan_id": satuanId,
        "image": image,
        "is_best_seller": isBestSeller ? 1 : 0,
        "is_discount": isDiscount ? 1 : 0,
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "product_code": productCode,
        "updated_at": updatedAt?.toIso8601String(),
        "uuid": uuid,
        "is_sync": isSynced,
        "deleted_at": deletedAt,
      };

  Product copyWith({
    int? id,
    int? userId,
    int? productId,
    String? name,
    String? description,
    int? hpp,
    int? price,
    int? stock,
    String? category,
    int? categoryId,
    int? discount,
    String? satuan,
    int? satuanId,
    String? image,
    bool? isBestSeller,
    bool? isDiscount,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? productCode,
    String? uuid,
    int? isSynced,
    String? deletedAt,
  }) {
    return Product(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      description: description ?? this.description,
      hpp: hpp ?? this.hpp,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      category: category ?? this.category,
      categoryId: categoryId ?? this.categoryId,
      discount: discount ?? this.discount,
      satuan: satuan ?? this.satuan,
      satuanId: satuanId ?? this.satuanId,
      image: image ?? this.image,
      isBestSeller: isBestSeller ?? this.isBestSeller,
      isDiscount: isDiscount ?? this.isDiscount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      productCode: productCode ?? this.productCode,
      uuid: uuid ?? this.uuid,
      isSynced: isSynced ?? this.isSynced,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.userId == userId &&
        other.productId == productId &&
        other.name == name &&
        other.description == description &&
        other.hpp == hpp &&
        other.price == price &&
        other.stock == stock &&
        other.category == category &&
        other.categoryId == categoryId &&
        other.discount == discount &&
        other.satuan == satuan &&
        other.satuanId == satuanId &&
        other.image == image &&
        other.isBestSeller == isBestSeller &&
        other.isDiscount == isDiscount &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.productCode == productCode &&
        other.uuid == uuid &&
        other.isSynced == isSynced &&
        other.deletedAt == deletedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        productId.hashCode ^
        name.hashCode ^
        description.hashCode ^
        hpp.hashCode ^
        price.hashCode ^
        stock.hashCode ^
        category.hashCode ^
        categoryId.hashCode ^
        discount.hashCode ^
        satuan.hashCode ^
        satuanId.hashCode ^
        image.hashCode ^
        isBestSeller.hashCode ^
        isDiscount.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        productCode.hashCode ^
        uuid.hashCode ^
        isSynced.hashCode ^
        deletedAt.hashCode;
  }
}
