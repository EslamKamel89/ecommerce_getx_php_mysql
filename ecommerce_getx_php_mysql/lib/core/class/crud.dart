// ignore_for_file: unused_import

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_getx_php_mysql/core/class/status_request.dart';
import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:ecommerce_getx_php_mysql/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String url, Map data) async {
    Uri uri = Uri.parse(url);
    try {
      if (await checkInternet()) {
        var response = await http.post(uri, body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          return right(jsonDecode(response.body));
        } else {
          'postData method in Crud class'.prt;
          'StatusRequest.serverFailure'.pr;
          return left(StatusRequest.serverFailure);
        }
      } else {
        'postData method in Crud class'.prt;
        'StatusRequest.offlineFailure'.pr;
        return left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      'postData method in Crud class'.prt;
      'StatusRequest.error'.pr;
      e.toString().pr;
      return left(StatusRequest.error);
    }
  }
}
