import 'package:dribbble_clone/view/home/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Router {
  static const String initialRoute = MyHomePage.routeName;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyHomePage.routeName:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
