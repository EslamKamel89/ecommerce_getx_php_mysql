// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnBoarding {
  final String? title;
  final String? body;
  String? imagePath;
  OnBoarding({this.title, this.body, String? image}) {
    imagePath = 'assets/images/$image';
  }
}
