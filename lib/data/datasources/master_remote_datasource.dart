import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:webview_skops/core/constants/variables.dart';
import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:webview_skops/data/models/response/guru_response_model.dart';
import 'package:webview_skops/data/models/response/siswa_response_model.dart';
import 'package:webview_skops/presentation/master/models/siswa_request_model.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_request_model.dart';
import 'package:webview_skops/presentation/setting/models/ekstensi_response_model.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_request_model.dart';
import 'package:webview_skops/presentation/setting/models/jurusan_response_model.dart';
import 'package:webview_skops/presentation/setting/models/kelas_request_model.dart';
import 'package:webview_skops/presentation/setting/models/kelas_response_model.dart';

class MasterRemoteDatasource {
  // --- SISWA ---
  Future<Either<String, SiswaResponseModel>> getSiswa() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/siswa'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(SiswaResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, SiswaResponseModel>> addSiswa(
    SiswaRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/siswa'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(SiswaResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, SiswaResponseModel>> editSiswa(
    Siswa data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/v1/siswa/${data.id}'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 201) {
      return Right(SiswaResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, SiswaResponseModel>> deleteSiswa(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/v1/siswa/$id'),
      headers: headers,
    );

    if (response.statusCode == 201) {
      return Right(SiswaResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  // --- GURU ---
  Future<Either<String, GuruResponseModel>> getGuru() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/guru'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(GuruResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  //  --- KELAS ---
  Future<Either<String, KelasResponseModel>> getKelas() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(KelasResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, KelasResponseModel>> addKelas(
    KelasRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(KelasResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, KelasResponseModel>> editKelas(
    Kelas data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas/${data.id}'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(KelasResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, KelasResponseModel>> deleteKelas(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas/$id'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(KelasResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  //  --- EKSTENSI ---
  Future<Either<String, EkstensiResponseModel>> getEkstensi() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas-ext'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(EkstensiResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, EkstensiResponseModel>> addExt(
    EkstensiRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas-ext'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(EkstensiResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, EkstensiResponseModel>> editExt(
    KelasExt data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas-ext/${data.id}'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(EkstensiResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, EkstensiResponseModel>> deleteExt(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/v1/kelas-ext/$id'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(EkstensiResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  //  --- JURUSAN ---
  Future<Either<String, JurusanResponseModel>> getJurusan() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/v1/jurusan'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(JurusanResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

  Future<Either<String, JurusanResponseModel>> addJurusan(
    JurusanRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/v1/jurusan'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(JurusanResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, JurusanResponseModel>> editJurusan(
    Jurusan data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.put(
      Uri.parse('${Variables.baseUrl}/api/v1/jurusan/${data.id}'),
      headers: headers,
      body: data.toJson(),
    );

    if (response.statusCode == 200) {
      return Right(JurusanResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }
  Future<Either<String, JurusanResponseModel>> deleteJurusan(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData.token}',
    };
    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/v1/jurusan/$id'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(JurusanResponseModel.fromJson(response.body));
    } else {
      final obj = jsonDecode(response.body);
      return Left(obj['message']);
    }
  }

}
