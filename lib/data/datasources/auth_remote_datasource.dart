import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:webview_skops/core/constants/variables.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

import '../models/request/change_password_request_model.dart';
import '../models/request/login_request_model.dart';
import '../models/request/register_request_model.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> register(
    RegisterRequestModel model,
  ) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/register'),
      headers: headers,
      body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
      // return const Left('Server error');
    }
  }

  Future<Either<String, AuthResponseModel>> changePassword(
    ChangePasswordRequestModel model,
  ) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/change-password'),
      headers: headers,
      body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
      // return const Left('Server error');
    }
  }

  Future<Either<String, AuthResponseModel>> login(
    LoginRequestModel model,
  ) async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/login'),
      headers: headers,
      body: model.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, String>> savedeviceid(
    String email,
    String deviceid,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {'Authorization': 'Bearer ${authData.token}'};

    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/savedeviceid'),
      headers: headers,
      body: {'email': email, 'deviceid': deviceid},
    );

    if (response.statusCode == 200) {
      return right(response.body);
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
      body: jsonEncode({'username': authData.user.username}),
    );

    if (response.statusCode == 200) {
      AuthLocalDatasource().removeAuthData();
      return right(response.body);
    } else {
      return left(response.body);
    }
  }
}
