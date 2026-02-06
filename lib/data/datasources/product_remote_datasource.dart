// import 'package:dartz/dartz.dart';
// import 'package:webview_skops/core/constants/variables.dart';
// import 'package:webview_skops/data/models/request/product_request_model.dart';
// import 'package:webview_skops/data/models/response/add_product_response_model.dart';
// import 'package:http/http.dart' as http;
// import 'package:webview_skops/data/models/response/product_response_model.dart';

// import '../models/request/product_sync_request_model.dart';
// import 'auth_local_datasource.dart';

// class ProductRemoteDatasource {
//   Future<Either<String, ProductResponseModel>> getProducts() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.get(
//       Uri.parse('${Variables.baseUrl}/api/v1/products'),
//       headers: {'Authorization': 'Bearer ${authData.token}'},
//     );

//     if (response.statusCode == 200) {
//       return right(ProductResponseModel.fromJson(response.body));
//     } else {
//       return left(response.body);
//     }
//   }

//   Future<Either<String, AddProductResponseModel>> addProduct(
//     ProductRequestModel productRequestModel,
//   ) async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final Map<String, String> headers = {
//       'Authorization': 'Bearer ${authData.token}',
//     };
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse('${Variables.baseUrl}/api/v1/products'),
//     );
//     request.fields.addAll(productRequestModel.toMap());
//     request.files.add(
//       await http.MultipartFile.fromPath(
//         'image',
//         productRequestModel.image.path,
//       ),
//     );
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     final String body = await response.stream.bytesToString();

//     if (response.statusCode == 201) {
//       return right(AddProductResponseModel.fromJson(body));
//     } else {
//       return left(body);
//     }
//   }

//   Future<bool> sendProduct(ProductSyncRequestModel requestModel) async {
//     final url = Uri.parse('${Variables.baseUrl}/api/v1/products');
//     final authData = await AuthLocalDatasource().getAuthData();
//     final Map<String, String> headers = {
//       'Authorization': 'Bearer ${authData.token}',
//     };
//     var request = http.MultipartRequest('POST', url);
//     request.fields.addAll(requestModel.toMap());
//     request.files.add(
//       await http.MultipartFile.fromPath('image', requestModel.image.path),
//     );
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     // final String body = await response.stream.bytesToString();

//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//   // Future<bool> sendProduct(ProductSyncRequestModel requestModel) async {
//   //   final url = Uri.parse('${Variables.baseUrl}/api/v1/sync-products');
//   //   final authData = await AuthLocalDatasource().getAuthData();
//   //   final Map<String, String> headers = {
//   //     'Authorization': 'Bearer ${authData.token}',
//   //     'Accept': 'application/json',
//   //     'Content-Type': 'application/json',
//   //   };
//   //   final response = await http.post(
//   //     url,
//   //     headers: headers,
//   //     body: requestModel.toJson(),
//   //   );

//   //   if (response.statusCode == 201) {
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
//   // }
// }
