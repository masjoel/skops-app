import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:webview_skops/core/constants/variables.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:webview_skops/data/models/response/skor_response_model.dart';
import '../models/response/dash_totalpoin_response_model.dart';
import '../models/response/top10_siswa_response_model.dart';
import '../models/response/top10_skor_response_model.dart';

class DashRemoteDatasource {
  Future<Either<String, DashTotalPoinResponseModel>> getTotalPoin() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/totalpoin'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(DashTotalPoinResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String,Top10SiswaResponseModel>> getTop10Poin() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/top10poin'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(Top10SiswaResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String,Top10SkorResponseModel>> get10Skor() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/top10skor'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(Top10SkorResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String,SkorResponseModel>> getJenisSkor() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/jenispoin'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(SkorResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

}
