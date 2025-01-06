import 'package:flutter/material.dart';

import 'home.dart';
import 'models/product.dart';
import 'models/student.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

class AppRoutes {
  static const String home = '/';
  static const String screen1 = '/screen1';
  static const String screen2 = '/screen2';
  static const String screen3 = '/screen3';
  // Routes First Way
  // static final Map<String, WidgetBuilder> routes = {
  //   home: (context) => const Home(),
  //   screen1: (context) => const Screen1(),
  //   screen2: (context) => const Screen2(),
  // };
  // Routes Sexond Way
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // print('Routes Data : ${settings.arguments}');
    var data = settings.arguments;
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      case screen1:
        return MaterialPageRoute(
          builder: (context) => Screen1(
            student: data as Student,
          ),
        );
      case screen2:
        return MaterialPageRoute(
          builder: (context) => Screen2(
            prodact: data as Product,
          ),
        );
      case screen3:
        return MaterialPageRoute(
          builder: (context) => Screen3(
            data: data as Map<String, dynamic>,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
    }
  }
}
