import 'dart:convert';

import 'package:webview_skops/data/datasources/auth_local_datasource.dart';
import 'package:webview_skops/data/models/response/qris_response_model.dart';
import 'package:webview_skops/data/models/response/qris_status_response_model.dart';
import 'package:http/http.dart' as http;

class MidtransRemoteDatasource {
  String generateBasicAuthHeader(String serverKey) {
    final base64Credentials = base64Encode(utf8.encode('$serverKey:'));
    final authHeader = 'Basic $base64Credentials';

    return authHeader;
  }

  Future<QrisResponseModel> generateQRCode(
    String orderId,
    int grossAmount,
  ) async {
    final serverKey = await AuthLocalDatasource().getMitransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': generateBasicAuthHeader(serverKey),
    };

    final body = jsonEncode({
      'payment_type': 'gopay',
      'transaction_details': {'order_id': orderId, 'gross_amount': grossAmount},
      // "qris": {"acquirer": "gopay"}
    });

    final response = await http.post(
      serverKey.contains('SB-Mid-server')
          ? Uri.parse('https://api.sandbox.midtrans.com/v2/charge')
          : Uri.parse('https://api.midtrans.com/v2/charge'),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return QrisResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to generate QR Code');
    }
  }

  Future<QrisStatusResponseModel> checkPaymentStatus(String orderId) async {
    final serverKey = await AuthLocalDatasource().getMitransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': generateBasicAuthHeader(serverKey),
    };
    // SB-Mid-server-l6Vebemi1Lsv1PFACGzxl8c_
    // Mid-server-f9AmLyRL8hnSxK7leSS-p2G2
    final response = await http.get(
      serverKey.contains('SB-Mid-server')
          ? Uri.parse('https://api.sandbox.midtrans.com/v2/$orderId/status')
          : Uri.parse('https://api.midtrans.com/v2/$orderId/status'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QrisStatusResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to check payment status');
    }
  }
}
