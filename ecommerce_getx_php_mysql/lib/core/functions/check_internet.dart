// ignore_for_file: dead_code

import 'package:ecommerce_getx_php_mysql/core/extensions/extension.dart';
import 'package:http/http.dart' as http;

Future<bool> checkInternet() async {
  return true;
  try {
    'check internet function'.prt;
    var result = await http.get(Uri.parse('https://www.google.com'));
    // var result = await http.get(Uri.parse('google.com'));
    if (result.statusCode.pr == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    'error occured in check internet function'.pr;
    e.toString().pr;
    return false;
  }
}
