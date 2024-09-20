import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:stock_management_system/Data/AppException.dart';
import 'package:stock_management_system/Data/Network/BaseApiServices.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices implements BaseApiServices {
  @override
  Future<dynamic> getGetApi(String url) async {
    dynamic jsonresponse;
    try {
      dynamic response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      jsonresponse = retrunresponse(response);
    } on SocketException {
      throw FetchDataException('No internet Connection');
    } on TimeoutException {
      throw RequestTimeOutException('');
    }
    return jsonresponse;
  }

  @override
  Future getPostApi(String url, dynamic body) async {
    dynamic jsonresponse;
    try {
      dynamic response = await http
          .post(Uri.parse(url), body: body)
          .timeout(const Duration(seconds: 10));
      jsonresponse = retrunresponse(response);
    } on SocketException {
      throw FetchDataException('No internet Connection');
    } on TimeoutException {
      throw RequestTimeOutException('');
    }
    return jsonresponse;
  }

  dynamic retrunresponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic retrunresponse = jsonDecode(response.body);
        return retrunresponse;
      case 201:
        dynamic retrunresponse = jsonDecode(response.body);
        return retrunresponse;
      case 404:
        throw FetchDataException('');
      default:
        throw FetchDataException(
            'Error From server , status code is ${response.statusCode}');
    }
  }
}
