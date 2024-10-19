
import 'package:flutter/material.dart';
import 'package:untitled11/common/app_route.dart';
import 'package:untitled11/screens/delivery.dart';
import 'package:untitled11/screens/details.dart';
import 'package:untitled11/screens/home.dart';
import 'package:untitled11/screens/order.dart';
import 'package:untitled11/screens/welcome.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcome:
        return buildRoute(
          const Welcome(),
          settings: settings,
        );
      case Routes.home:
        return buildRoute(
          const Home(),
          settings: settings,
        );
      case Routes.detail:
        return buildRoute(
          const Detail(),
          settings: settings,
        );
      case Routes.order:
        return buildRoute(
          const Order(),
          settings: settings,
        );
      case Routes.delivery:
        return buildRoute(
          const Delivery(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
