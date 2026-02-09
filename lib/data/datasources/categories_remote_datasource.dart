// import 'package:dartz/dartz.dart';
// import 'package:webview_skops/data/models/request/category_request_model.dart';
// import 'package:http/http.dart' as http;
// import 'package:webview_skops/data/models/response/categories_response_model.dart';

// import '../../core/constants/variables.dart';
// import 'auth_local_datasource.dart';

// class CategoriesRemoteDatasource {
//   Future<bool> sendOrder(CategoryRequestModel requestModel) async {
//     final url = Uri.parse('${Variables.baseUrl}/api/v1/categories');
//     final authData = await AuthLocalDatasource().getAuthData();
//     final Map<String, String> headers = {
//       'Authorization': 'Bearer ${authData.token}',
//       'Accept': 'application/json',
//       'Content-Type': 'application/json',
//     };
//     // print(requestModel.toJson());
//     final response = await http.post(
//       url,
//       headers: headers,
//       body: requestModel.toJson(),
//     );

//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<Either<String, CategoriesResponseModel>> getCategories() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.get(
//       Uri.parse('${Variables.baseUrl}/api/v1/categories'),
//       headers: {'Authorization': 'Bearer ${authData.token}'},
//     );

//     if (response.statusCode == 200) {
//       return right(CategoriesResponseModel.fromJson(response.body));
//     } else {
//       return left(response.body);
//     }
//   }
// }
