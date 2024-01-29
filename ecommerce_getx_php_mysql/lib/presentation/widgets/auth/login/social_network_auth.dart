import 'package:ecommerce_getx_php_mysql/presentation/components/ui_components.dart';
import 'package:flutter/material.dart';

class SocialNetworkAuth extends StatelessWidget {
  const SocialNetworkAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularImageAsset(imageName: 'facebook.png'),
        SizedBox(width: 15),
        CircularImageAsset(imageName: 'google.png'),
        SizedBox(width: 15),
        CircularImageAsset(imageName: 'instgram.png'),
      ],
    );
  }
}
