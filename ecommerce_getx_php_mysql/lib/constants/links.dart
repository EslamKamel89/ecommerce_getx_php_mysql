class AppLinks {
  static const String serverName = 'http://172.24.112.1/ecommerce';
  static const String testLink = '$serverName/test.php';
  // ------------------------ Auth/signup ------------------------
  static const String signup = '$serverName/auth/signup.php';
  static const String verifycodeSignupLink = '$serverName/auth/verifycode_signup.php';
  // ------------------------ Auth/login ------------------------
  static const String loginLink = '$serverName/auth/login.php';
  // ------------------------ Auth/forgetpassword ------------------------
  static const String checkemailLink = '$serverName/forgetpassword/checkemail_forgetpassword.php';
  static const String verifyCodeForgetPasswordLink = '$serverName/forgetpassword/verifycode_forgetpassword.php';
  static const String resetPassworLink = '$serverName/forgetpassword/resetpassword.php';
  // ------------------------ Categories View ------------------------
  static const String categoriesViewLink = '$serverName/categories/view.php';
  // ------------------------ Home View ------------------------
  static const String homeViewLink = '$serverName/home.php';
  // ------------------------ Categories images path ------------------------
  static const String categoriyImagePath = '$serverName/upload/categories/';
  // ------------------------ items images path ------------------------
  static const String itemsImagePath = '$serverName/upload/items/';
  // static const String Link = '$serverName/';
  // static const String Link = '$serverName/';
  // static const String Link = '$serverName/';
}
