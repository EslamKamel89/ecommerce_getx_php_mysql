import 'package:http/http.dart' as http;

Future<bool> checkInternet() async {
  try {
    var result = await http.get(Uri.parse('google.com'));
    if (result.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
