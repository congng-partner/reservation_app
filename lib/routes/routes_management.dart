import 'package:flutter/material.dart';
import 'package:reservation_app/pages/authentication/forgot_password_get_otp_page.dart';
import 'package:reservation_app/pages/authentication/forgot_password_save_page.dart';
import 'package:reservation_app/pages/authentication/forgot_password_verify_otp_page.dart';
import 'package:reservation_app/pages/authentication/login_page.dart';
import 'package:reservation_app/pages/authentication/notify_save_success_page.dart';
import 'package:reservation_app/pages/authentication/sign_up_page.dart';
import 'package:reservation_app/pages/food_caterory/food_caterory_page.dart';
import 'package:reservation_app/pages/happy_deals/happy_deals_page.dart';
import 'package:reservation_app/pages/home/homge_page.dart';
import 'package:reservation_app/pages/not_found/not_found_page.dart';
import 'package:reservation_app/pages/notification/notification_page.dart';
import 'package:reservation_app/pages/onboarding/onboarding_page.dart';
import 'package:reservation_app/pages/our_restaurant/our_restaurant_page.dart';
import 'package:reservation_app/routes/route_named.dart';

class RouteManager {
  static Route routeManagement(RouteSettings settings) {
    switch (settings.name) {
      case RouteNamed.homePage:
        {
          return MaterialPageRoute(
            builder: (context) => const HomePage(),
          );
        }
      case RouteNamed.onBoardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),
          );
        }
      case RouteNamed.notificationPage:
        {
          return MaterialPageRoute(
            builder: (context) => const NotificationPage(),
          );
        }
      case RouteNamed.foodCategoryPage:
        {
          return MaterialPageRoute(
            builder: (context) => const FoodCateroryPage(),
          );
        }
      case RouteNamed.restaurantPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OurRestaurantPage(),
          );
        }
      case RouteNamed.happyDealsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const HappyDealsPage(),
          );
        }
      case RouteNamed.loginPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoginPage(),
          );
        }
      case RouteNamed.signUpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpPage(),
          );
        }
      case RouteNamed.forgotPasswordGetOtpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordGetOtpPage(),
          );
        }
      case RouteNamed.forgotPasswordVerifyOtpPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordVerifyOtpPage(),
          );
        }
      case RouteNamed.forgotPasswordSavePage:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgotPasswordSavePage(),
          );
        }
      case RouteNamed.notifySaveSuccessPage:
        {
          return MaterialPageRoute(
            builder: (context) => const NotifySaveSuccessPage(),
          );
        }
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
