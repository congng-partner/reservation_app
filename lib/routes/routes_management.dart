import 'package:flutter/material.dart';
import 'package:reservation_app/pages/home/homge_page.dart';
import 'package:reservation_app/pages/not_found/not_found_page.dart';
import 'package:reservation_app/pages/onboarding/onboarding_page.dart';
import 'package:reservation_app/routes/route_named.dart';


class RouteManager {
  static Route routeManagement(RouteSettings settings) {
    switch (settings.name) {
      case RouteNamed.homePage:
        {
          return MaterialPageRoute(builder: (context) => const HomePage(),);
        }
      case RouteNamed.onBoardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),);
        }
      default:
        return MaterialPageRoute(builder: (context) => const NotFoundPage(),);
    }
  }
}
