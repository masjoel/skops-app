// // import 'package:meta/meta.dart';
// import 'dart:convert';

// import '../../../presentation/home/models/order_item.dart';

// class OrderRequestModel {
//     final String transactionTime;
//     final int kasirId;
//     final int totalHpp;
//     final int totalPrice;
//     final int totalItem;
//     final String paymentMethod;
//     final List<OrderItem> orderItems;

//     OrderRequestModel({
//         required this.transactionTime,
//         required this.kasirId,
//         required this.totalHpp,
//         required this.totalPrice,
//         required this.totalItem,
//         required this.orderItems,
//         this.paymentMethod = 'cash',
//     });

//     factory OrderRequestModel.fromJson(String str) => OrderRequestModel.fromMap(json.decode(str));

//     String toJson() => json.encode(toMap());

//     factory OrderRequestModel.fromMap(Map<String, dynamic> json) => OrderRequestModel(
//         transactionTime: json["transaction_time"],
//         kasirId: json["kasir_id"],
//         totalHpp: json["total_hpp"],
//         totalPrice: json["total_price"],
//         totalItem: json["total_item"],
//         paymentMethod: json["payment_method"],
//         orderItems: List<OrderItem>.from(json["order_items"].map((x) => OrderItem.fromMap(x))),
//     );

//     Map<String, dynamic> toMap() => {
//         "transaction_time": transactionTime,
//         "kasir_id": kasirId,
//         "total_hpp": totalHpp,
//         "total_price": totalPrice,
//         "total_item": totalItem,
//         "payment_method": paymentMethod,
//         "order_items": List<dynamic>.from(orderItems.map((x) => x.toMap())),
//     };
// }

// class OrderItemModel {
//   final int productId;
//   final int quantity;
//   final int totalPrice;
//   final int totalHpp;

//   OrderItemModel({
//     required this.productId,
//     required this.quantity,
//     required this.totalPrice,
//     required this.totalHpp,
//   });

//   // Add the missing method to map with order ID
//   Map<String, dynamic> toMapForLocal(int orderId) {
//     return {
//       'id_order': orderId,
//       'id_product': productId,
//       'quantity': quantity,
//       'price': totalPrice,
//       'hpp': totalHpp,
//     };
//   }

//   factory OrderItemModel.fromMapLocal(Map<String, dynamic> map) {
//     return OrderItemModel(
//       productId: map['id_product']?.toInt() ?? 0,
//       quantity: map['quantity']?.toInt() ?? 0,
//       totalPrice: (map['price']?.toInt() ?? 0) * (map['quantity']?.toInt() ?? 0),
//       totalHpp: (map['hpp']?.toInt() ?? 0) * (map['quantity']?.toInt() ?? 0),
//     );
//   }

//   factory OrderItemModel.fromMap(Map<String, dynamic> map) {
//     return OrderItemModel(
//       productId: map["product_id"]?.toInt() ?? 0,
//       quantity: map["quantity"]?.toInt() ?? 0,
//       totalPrice: map["total_price"]?.toInt() ?? 0,
//       totalHpp: map["total_hpp"]?.toInt() ?? 0,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       "product_id": productId,
//       "quantity": quantity,
//       "total_price": totalPrice,
//       "total_hpp": totalHpp,
//     };
//   }

//   String toJson() => json.encode(toMap());

//   factory OrderItemModel.fromJson(String str) => OrderItemModel.fromMap(json.decode(str));
// }



// // class OrderItemModel {
// //     final int productId;
// //     final int quantity;
// //     final int totalPrice;
// //     final int totalHpp;

// //     OrderItemModel({
// //         required this.productId,
// //         required this.quantity,
// //         required this.totalPrice,
// //         required this.totalHpp,
// //     });

// //     factory OrderItemModel.fromJson(String str) => OrderItemModel.fromMap(json.decode(str));

// //     String toJson() => json.encode(toMap());

// //     factory OrderItemModel.fromMap(Map<String, dynamic> json) => OrderItemModel(
// //         productId: json["product_id"],
// //         quantity: json["quantity"],
// //         totalPrice: json["total_price"],
// //         totalHpp: json["total_hpp"],
// //     );

// //     Map<String, dynamic> toMap() => {
// //         "product_id": productId,
// //         "quantity": quantity,
// //         "total_price": totalPrice,
// //         "total_hpp": totalHpp,
// //     };
// // }
