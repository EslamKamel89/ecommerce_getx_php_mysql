import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/forgetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/resetpassword_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/success_reset_password_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/forget_reset_password/verify_otp_forget_password_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/login/login_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/success_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/auth/signup_folder/verify_otp_signup_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/connection/test_controller.dart';
import 'package:ecommerce_getx_php_mysql/buisness_logic/onboarding/onboarding_controller.dart';
import 'package:ecommerce_getx_php_mysql/constants/routes_names.dart';
import 'package:ecommerce_getx_php_mysql/core/middleware/middleware.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/forget_reset_password/forget_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/forget_reset_password/reset_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/forget_reset_password/success_reset_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/forget_reset_password/verify_otp_forget_password.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/login.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/signup_folder/signup.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/signup_folder/success_signup.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/auth/signup_folder/verify_otp_signup.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/language.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/onboarding.dart';
import 'package:ecommerce_getx_php_mysql/presentation/screens/test.dart';
import 'package:get/get.dart';

List<GetPage> routesList = [
  GetPage(
    name: AppRoutes.language,
    page: () => const ChooseLanguageScreen(),
    middlewares: [StartScreenMiddleware()],
  ),
  GetPage(
    name: AppRoutes.onBoarding,
    page: () => OnBoardingScreen(),
    bindings: [OnBoardingBindings()],
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => LoginScreen(),
    bindings: [LoginBindings()],
  ),
  GetPage(
    name: AppRoutes.signup,
    page: () => const SignupScreen(),
    bindings: [SignupBindings()],
  ),
  GetPage(
    name: AppRoutes.forgetPassword,
    page: () => const ForgetPasswordScreen(),
    bindings: [ForgetPasswordBindings()],
  ),
  GetPage(
    name: AppRoutes.resetPassword,
    page: () => const ResetPasswordScreen(),
    bindings: [ResetPasswordBindings()],
  ),
  GetPage(
    name: AppRoutes.verifyOtpAfterResetPassword,
    page: () => VerifyOtpForgetPasswordScreen(),
    bindings: [VerifyOtpForgetPasswordBindings()],
  ),
  GetPage(
    name: AppRoutes.signupSuccess,
    page: () => SignupSuccessScreen(),
    bindings: [SuccessSignupBindings()],
  ),
  GetPage(
    name: AppRoutes.resetPasswordSuccess,
    page: () => ResetPasswordSuccessScreen(),
    bindings: [SuccessResetPasswordBindings()],
  ),
  GetPage(
    name: AppRoutes.verifyOtpAfterSignup,
    page: () => VerifyOtpSignupScreen(),
    bindings: [VerifyOtpSignupBindings()],
  ),
  GetPage(
    name: AppRoutes.testScreen,
    page: () => const TestScreen(),
    bindings: [TestScreenBindings()],
  ),
];
