// import 'package:dartz/dartz.dart';

// import '../../core/constants/variables.dart';
// import '../models/response/prospect_response_model.dart';
// import 'auth_local_datasource.dart';
// import 'package:http/http.dart' as http;

// class ProspectRemoteDatasource {
//   Future<Either<String, ProspectResponseModel>> getProspects() async {
//     final authData = await AuthLocalDatasource().getAuthData();
//     final response = await http.get(
//       Uri.parse('${Variables.baseUrl}/api/v1/prospect/${authData.user.id}'),
//       headers: {'Authorization': 'Bearer ${authData.token}'},
//     );
//     if (response.statusCode == 200) {
//       return right(ProspectResponseModel.fromJson(response.body));
//     } else {
//       return left(response.body);
//     }
//   }
// }
