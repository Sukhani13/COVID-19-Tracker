import 'package:COVID19/Screens/loadingHomePage.dart';
import 'package:COVID19/Services/routeGenerator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      color: Colors.white,
      home: LoadingHomePage(),
    );
  }
}
