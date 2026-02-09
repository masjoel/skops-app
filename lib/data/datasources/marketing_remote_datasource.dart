// import 'package:dartz/dartz.dart';
// import 'package:webview_skops/data/models/response/marketing_response_model.dart';
// import 'package:http/http.dart' as http;
// import '../../core/constants/variables.dart';

// class MarketingRemoteDatasource {
//   Future<Either<String, MarketingResponseModel>> getRandomMarketing() async {
//     final response = await http.get(
//       Uri.parse('${Variables.baseUrl}/api/v1/marketing'),
//     );
//     if (response.statusCode == 200) {
//       return right(MarketingResponseModel.fromJson(response.body));
//     } else {
//       return left(response.body);
//     }
//   }
// }
