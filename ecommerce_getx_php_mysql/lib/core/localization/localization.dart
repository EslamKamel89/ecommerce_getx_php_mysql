import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en': {
        // onBoarding
        'WELCOME': 'Welcome',
        'ENGLISH': 'English Language',
        'ARABIC': 'Arabic Language',
        'CHOOSE_LANGUAGE': 'Please Choose The App Language',
        'CONTINUE': 'Continue',
        'SKIP': 'Skip',
        // login
        'SIGN_IN': 'Sign In',
        'WELCOME_BACK': 'Welcome Back',
        'PLEASE_SIGN_IN': 'Please Sign In With Your\nEmail And Password',
        'PASSWORD': 'Password',
        'OR_SIGN_IN_WITH': 'Or Sign In With',
        "DON'T_HAVE_AN_ACCOUNT": "Don't Have An Account",
        'SIGN_UP': 'Sign Up',
        'FORGET_PASSWORD': 'Forget Password',
        // sign up
        'PASSWORD_AGAIN': 'Password Again',
        'CONFIRM_PASSWORD': 'Confirm Password',
        'NAME': 'Name',
        'HAVE_AN_ACCOUNT': 'Have An Account?',
        // OTP check after sign up
        'ENTER_OTP': 'please enter OTP code that you recieved on your email',
        // forget password
        'RESET_PASSWORD': 'Reset Password',
        'CHECK_EMAIL': 'Check Email',
        'FORGET_TEXT': 'Please Enter Your Email\nTo Recieve Verification Code',
        // verify data
        'VERIFY_TEXT': 'Please enter verification code that\nyou recieved on your email',
        'VERIFY_EMAIL': 'Verify Email',
        // reset password
        'RESET_TEXT': 'Please enter you new password',
        'SAVE': 'Save',
        // reset password success
        'RESET_PASSWORD_SUCCESS': 'Password Reset Completed successfuly',
        'RESET_PASSWORD_SUCCESS_TEXT': 'Please Login To Your Accoun With Your New Password',
        // sign up success screen
        'SUCCESS': 'Success',
        'SUCCESS_SIGNUP_GO_TO_LOGIN_TEXT': 'You Created Your Account Successfuly\nPlease Sign In To Access Your Account',
        // check mail after signup screen
        'CHECK_MAIL': 'Verify your email',
        'CHECK_EMAIL_SIGN_UP': 'Enter Your Email To Recieve Verification Code',
        // validator
        'TWO_PASSWORD_DONT_MATCH': "Two passwords don't match",
        'WARNING': 'Warning',
        'FIELD_CAN_NOT_BE_EMPTY': "Please don't leave this field empty",
        'THE_CHARS_CANT_BE_LESS_THAN': 'The Number Of Characters Should Be Between',
        'CHARACTERS': 'Characters',
        'USERNAME_CAN_NOT_BE_EMPTY': "Email field can't be empty",
        'EMAIL_CAN_NOT_BE_EMPTY': "Email field can't be empty ",
        'ENTER_VALID_EMAIL': 'Email Not Valid',
        'PHONE_CAN_NOT_BE_EMPTY': "Phone field can't be empty ",
        'PASSWORD_CAN_NOT_BE_EMPTY': "Password field can't be empty ",
        // titleText
        'USERNAME': 'Username',
        'EMAIL': 'Email',
        'PHONE': 'Phone',
        'PASSONE': 'Password',
        'PASSTWO': 'Enter Password Again',
        // hintText
        'USERNAME_HINT': 'Please Enter Your Username',
        'EMAIL_HINT': 'Please Enter Your Email',
        'PHONE_HINT': 'Please Enter Your Phone',
        'PASSONE_HINT': 'Please Enter Your Password',
        'PASSTWO_HINT': 'Please Enter Your Password Again',
        // exit app alert
        'ALERT_CONTENT': 'Do You Want To Exit The APP',
        'CONFIRM': 'Confirm',
        'CANCEL': 'Cancel',
      },
      'ar': {
        // onBoarding
        'WELCOME': 'مرحبا',
        'ENGLISH': 'اللغة الانجليزية',
        'ARABIC': 'اللغة العربية',
        'CHOOSE_LANGUAGE': 'من فضلك اختر لغة تشغيل التطبيق',
        'CONTINUE': 'التالي',
        'SKIP': 'تخطي',
        // login
        'SIGN_IN': 'تسجيل الدخول',
        'WELCOME_BACK': 'مرحبا ',
        'PLEASE_SIGN_IN': 'من فضلك قم بتسجيل الدخول بواسطة\nالبريد الالكتروني و الرمز السري',
        'PASSWORD': 'الرقم السري',
        'OR_SIGN_IN_WITH': 'او قم بتسجيل الدخول بواسطة',
        "DON'T_HAVE_AN_ACCOUNT": "ليس لديك حساب",
        'SIGN_UP': 'أنشاء حساب',
        'FORGET_PASSWORD': 'نسيت كلمة المرور ',
        // signup
        'PASSWORD_AGAIN': 'الرمز السري مرة اخري',
        'CONFIRM_PASSWORD': 'أدخل الرمز السري مرة أخري',
        'NAME': 'الأسم',
        'HAVE_AN_ACCOUNT': 'هل تملك حساب ؟',
        // OTP check after sign up
        'ENTER_OTP': 'من فضلك أدخل رمز التأكيد الذي تم أرسالة الي بريدك الالكتروني',
        // forget passwords
        'RESET_PASSWORD': 'أعادة تحديد الرمز السري',
        'CHECK_EMAIL': 'التحقق من البريد الألكتروني',
        'FORGET_TEXT': 'الرجاء ادخال البريد الالكتروني ليتم ارسال رمز التحقق ',
        // verify data
        'VERIFY_TEXT': 'من فضلك قم بأدخال رمز التحقق الذي تم\nارسالة الي بريدك الالكتروني',
        'VERIFY_EMAIL': 'التاكد من صحة البريد الالكتروني',
        // reset password
        'RESET_TEXT': 'من فضلك قم بادخال الرمز السري الجديد',
        'SAVE': 'حفظ',
        // reset password success
        'RESET_PASSWORD_SUCCESS': 'تغير كلمة المرور تم بنجاح',
        'RESET_PASSWORD_SUCCESS_TEXT': 'من فضلك قم بتسجيل الدخول الي حسابك بأستخدام الرمز السري الجديد',
        // sign up success screen
        'SUCCESS': 'تم أنشاء حساب جديد بنجاح',
        'SUCCESS_SIGNUP_GO_TO_LOGIN_TEXT': 'لقد اتتمت عملية انشاء الحساب بنجاح من فضلك قم بتسجيل الدخول',
        // check mail after signup screen
        'CHECK_MAIL': 'تحقق من البريد الالكتروني',
        'CHECK_EMAIL_SIGN_UP': 'أدخل بريدك الالكتروني حتي يتم استقبال رسالة التحقق ',
        // validator
        'TWO_PASSWORD_DONT_MATCH': "الرمز السري الثاني لا يطابق الأول",
        'WARNING': 'تحذير',
        'FIELD_CAN_NOT_BE_EMPTY': "من فضلك لا تترك هذ الحقل فارغ",
        'THE_CHARS_CANT_BE_LESS_THAN': 'عدد الاحرف يجب أن يكون بين',
        'CHARACTERS': 'حرف',
        'USERNAME_CAN_NOT_BE_EMPTY': "حقل أسم المستخدم لا يمكن أن يكون فارغا ",
        'EMAIL_CAN_NOT_BE_EMPTY': "حقل البريد الالكتروني لا يمكن أن يكون فارغا ",
        'ENTER_VALID_EMAIL': 'قم بأدخال بريد الكتروني صحيح',
        'PHONE_CAN_NOT_BE_EMPTY': "حقل رقم الهاتف لا يمكن أن يكون فارغا",
        'PASSWORD_CAN_NOT_BE_EMPTY': "حقل الرمز السري لا يمكن أن يكون فارغا ",
        // titleText
        'USERNAME': 'أسم المستخدم',
        'EMAIL': 'البريد الألكتروني',
        'PHONE': 'رقم الهاتف',
        'PASSONE': 'الرمز السري',
        'PASSTWO': 'أعد أدخال الرمز السري',
        // hintText
        'USERNAME_HINT': 'من فضلك أدخل أسم المستخدم',
        'EMAIL_HINT': 'من فضلك أدخل البريد الالكتروني',
        'PHONE_HINT': 'من فضلك أدخل رقم الهاتف',
        'PASSONE_HINT': 'من فضلك أدخل الرمز السري',
        'PASSTWO_HINT': 'من فضلك أعد أدخال الرمز السري',
        // exit app alert
        'ALERT_CONTENT': 'هل تريد الخروج من التطبيق',
        'CONFIRM': 'نعم',
        'CANCEL': 'لا',
      },
    };
  }
}
