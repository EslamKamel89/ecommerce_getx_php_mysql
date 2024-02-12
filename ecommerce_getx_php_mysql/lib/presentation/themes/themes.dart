import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum DeviceLocale { en, ar }

enum ThemeType { dark, light }

class Themes {
  static late TextStyle headlineLarge;
  static late TextStyle headlineMedium;
  static late TextStyle headlineSmall;
  static late TextStyle bodyLarge;
  static late TextStyle bodyMedium;
  static late TextStyle bodySmall;
  static late TextStyle displayLarge;
  static late TextStyle displayMedium;
  static late TextStyle displaySmall;

  static void init(BuildContext context) {
    headlineLarge = Theme.of(context).textTheme.headlineLarge!;
    headlineMedium = Theme.of(context).textTheme.headlineMedium!;
    headlineSmall = Theme.of(context).textTheme.headlineSmall!;
    bodyLarge = Theme.of(context).textTheme.bodyLarge!;
    bodyMedium = Theme.of(context).textTheme.bodyMedium!;
    bodySmall = Theme.of(context).textTheme.bodySmall!;
    displayLarge = Theme.of(context).textTheme.displayLarge!;
    displayMedium = Theme.of(context).textTheme.displayMedium!;
    displaySmall = Theme.of(context).textTheme.displaySmall!;
  }

  static TextTheme _textThemeLocale(String fontFamily) {
    return TextTheme(
      headlineLarge: TextStyle(/*fontFamily: fontFamily,*/ fontWeight: FontWeight.bold, fontSize: 22.sp, color: AppColors.textDark),
      headlineMedium: TextStyle(/*fontFamily: fontFamily,*/ fontWeight: FontWeight.bold, fontSize: 17.sp, color: AppColors.textDark),
      headlineSmall: TextStyle(/*fontFamily: fontFamily,*/ fontWeight: FontWeight.bold, fontSize: 12.sp, color: AppColors.textDark),
      bodyLarge: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 20.sp, height: 1.5, color: AppColors.textLight),
      bodyMedium: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 15.sp, height: 1.5, color: AppColors.textLight),
      bodySmall: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 10.sp, height: 1.5, color: AppColors.textLight),
      displayLarge: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 20.sp, color: AppColors.textDark),
      displayMedium: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 15.sp, color: AppColors.textDark),
      displaySmall: TextStyle(/*fontFamily: fontFamily,*/ fontSize: 10.sp, color: AppColors.textDark),
    );
  }

  static ThemeData? customTheme({
    required DeviceLocale deviceLocale,
    required ThemeType themeType,
  }) {
    late String fontFamily;
    if (deviceLocale == DeviceLocale.ar) {
      fontFamily = 'CairoPlay';
    } else if (deviceLocale == DeviceLocale.en) {
      fontFamily = 'PlayfairDisplay';
    }
    if (themeType == ThemeType.light) {
      return ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor1,
          foregroundColor: AppColors.onBackgroundColor1,
        ),
        textTheme: _textThemeLocale(fontFamily),
      );
    } else if (themeType == ThemeType.dark) {
      return ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(),
        textTheme: _textThemeLocale(fontFamily),
      );
    }
    return null;
  }
}


 // static const TextTheme _textThemeEnglish = TextTheme(
//     headlineLarge: TextStyle(fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.textDark),
//     headlineMedium: TextStyle(fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold, fontSize: 17, color: AppColors.textDark),
//     headlineSmall: TextStyle(fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold, fontSize: 12, color: AppColors.textDark),
//     bodyLarge: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 20, height: 1.5, color: AppColors.textLight),
//     bodyMedium: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 15, height: 1.5, color: AppColors.textLight),
//     bodySmall: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 10, height: 1.5, color: AppColors.textLight),
//     displayLarge: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 20, color: AppColors.textDark),
//     displayMedium: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 15, color: AppColors.textDark),
//     displaySmall: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 10, color: AppColors.textDark),
//   );

//   static ThemeData customLightTheme = ThemeData.light().copyWith(
//       appBarTheme: const AppBarTheme(
//         backgroundColor: AppColors.backgroundColor1,
//         foregroundColor: AppColors.onBackgroundColor1,
//       ),
//       textTheme: _textThemeEnglish);
//   static ThemeData customDarkTheme = ThemeData.dark().copyWith(
//     appBarTheme: const AppBarTheme(
// //backgroundColor: Colors.black,
// //foregroundColor: Colors.white,
//         ),
//     textTheme: _textThemeEnglish,
//   );