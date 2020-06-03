import 'package:COVID19/Screens/alertScreen.dart';
import 'package:COVID19/Screens/countryPage.dart';
import 'package:COVID19/Screens/homepage.dart';
import 'package:COVID19/Screens/loadingCountryPage.dart';
import 'package:COVID19/Screens/loadingHomePage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoadingHomePage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage(args));
      case '/country':
        return MaterialPageRoute(builder: (_) => LoadingCountryPage(args));
      case '/countrypage':
        return MaterialPageRoute(builder: (_) => CountryPage(args));
      case '/error':
        return MaterialPageRoute(builder: (_) => AlertScreen());
    }
    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      body: Center(
        child: Text("ERROR"),
      ),
    );
  });
}
