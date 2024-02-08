import 'package:ecommerce_getx_php_mysql/constants/color.dart';
import 'package:flutter/material.dart';

class CheckIconFromSuccessResetPassword extends StatelessWidget {
  const CheckIconFromSuccessResetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check_circle_outline_outlined,
      size: 200,
      color: AppColors.backgroundColor1,
    );
  }
}
