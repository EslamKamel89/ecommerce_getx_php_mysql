import 'dart:io' as io;

Future<bool> checkInternet() async {
  try {
    List<io.InternetAddress> result = await io.InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } on io.SocketException catch (e) {
    return false;
  }
}
