import 'package:ecommerce_getx_php_mysql/constants/image_assets.dart';
import 'package:ecommerce_getx_php_mysql/data/models/onboarding_model/onboardingmodel.dart';

List<OnBoarding> onBoardingList = [
  OnBoarding(
    title: 'Choose Product',
    body: 'We have a 100K+ products, choose\nyour product from our\nE-commerce shop',
    image: AppImages.onBoardingChoosePoduct,
  ),
  OnBoarding(
    title: 'Easy & Safe Payment',
    body: 'Easy Checkout & Safe Payment\nmethod. Trusted by our customers\nfrom all over the world',
    image: AppImages.onBoardingPayment,
  ),
  OnBoarding(
    title: 'Track Your Order ',
    body: "Best Tracker has been used for\ntracking your order. You'll Know where your product is at the moment",
    image: AppImages.onBoardingTracker,
  ),
  OnBoarding(
    title: 'Fast Delivery',
    body: "Reliable And Fast Delivery. We\nDeliver your product the fastest\nway possible ",
    image: AppImages.onBoardingDelivery,
  ),
];
