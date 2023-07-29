import 'package:flutter/material.dart';
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
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
