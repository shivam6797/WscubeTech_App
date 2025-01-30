import 'package:flutter/material.dart';
import 'package:wscubetech_app/splash_screen.dart';
import 'package:wscubetech_app/wscube_page.dart';

class AppRoutes {
  static const String ROUTE_SPLASH = "/";
  static const String ROUTE_HOME = "/home";

  static Map<String, WidgetBuilder> getRoutes() => {
        ROUTE_SPLASH: (context) => SplashScreen(),
        ROUTE_HOME: (context) => WscubeTechPageScreen(),
      };
}
