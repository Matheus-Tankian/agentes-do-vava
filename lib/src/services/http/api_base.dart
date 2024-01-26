import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:vava/src/services/http/api_exceptions.dart';

class ApiBaseHelper {
  Future<dynamic> get(String url) async {
    const baseUrl = "https://x8ki-letl-twmt.n7.xano.io/api:BODjAlRt";

    try {
      final response = await http
          .get(
        Uri.parse('$baseUrl/$url'),
      )
          .timeout(const Duration(seconds: 7), onTimeout: () {
        throw TimeoutException(
            "Tempo de conexção excedido - Verifique se você tem conexão com a internet!");
      });
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('Sem conexão com a internet');
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body);
      case 401:
        throw UnauthorisedException("Credenciais inválidas");
      case 500:
      default:
        throw FetchDataException(
            'Ocorreu um erro durante a comunicação com o servidor com StatusCode : ${response.statusCode}');
    }
  }
}
