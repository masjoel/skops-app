// import 'dart:convert';

// import 'package:image_picker/image_picker.dart';

// class ProductSyncRequestModel {
//   final int userId;
//   final int productId;
//   final String name;
//   final int price;
//   final int hpp;
//   final int stock;
//   final String category;
//   final int isBestSeller;
//   final XFile image;
//   ProductSyncRequestModel({
//     required this.userId,
//     required this.productId,
//     required this.name,
//     required this.price,
//     required this.hpp,
//     required this.stock,
//     required this.category,
//     required this.isBestSeller,
//     required this.image,
//   });

//   factory ProductSyncRequestModel.fromJson(String str) =>
//       ProductSyncRequestModel.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory ProductSyncRequestModel.fromMap(Map<String, dynamic> json) =>
//       ProductSyncRequestModel(
//         userId: json["user_id"],
//         productId: json["product_id"],
//         name: json["name"],
//         price: json["price"],
//         hpp: json["hpp"],
//         stock: json["stock"],
//         category: json["category"],
//         image: json["image"],
//         isBestSeller: json["is_best_seller"],
//       );

//   Map<String, String> toMap() {
//     return {
//       'userId': userId.toString(),
//       'productId': productId.toString(),
//       'name': name,
//       'price': price.toString(),
//       'hpp': hpp.toString(),
//       'stock': stock.toString(),
//       'category': category,
//       'isBestSeller': isBestSeller.toString(),
//     };
//   }
// }
