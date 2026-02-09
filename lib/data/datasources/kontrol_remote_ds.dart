import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:webview_skops/core/constants/variables.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_request_model.dart';
import 'package:webview_skops/presentation/kontrol/models/kontrol_response_model.dart';

class KontrolRemoteDs {
    // --- KONTROL ---
  Future<Either<String, KontrolResponseModel>> getKontrol({
    required int page,
    String? search,
  }) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      Uri.parse(
        '${Variables.baseUrl}/api/v1/kontrol?page=$page&search=${search ?? ""}',
      ),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(KontrolResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message'] ?? 'Error server');
    }
  }

  Future<Either<String, KontrolResponseModel>> addKontrol(
    KontrolRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/kontrol'),
      headers: headers,
      body: jsonEncode(data.toMap()),
    );

    if (response.statusCode == 201) {
      return Right(KontrolResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, KontrolResponseModel>> editKontrol(Kontrol data) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/v1/kontrol/${data.id}'),
      headers: headers,
      body: jsonEncode(data.toJson()),
    );

    if (response.statusCode == 201) {
      return Right(KontrolResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, KontrolResponseModel>> deleteKontrol(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/v1/kontrol/$id'),
      headers: headers,
    );

    if (response.statusCode == 201) {
      return Right(KontrolResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }


}