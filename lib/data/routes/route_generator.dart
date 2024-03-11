import 'package:flutter/material.dart';
import 'package:take_home_app/data/routes/route_string.dart';
import 'package:take_home_app/presentation/pages/create_poll_page.dart';
import 'package:take_home_app/presentation/pages/home_page.dart';
import 'package:take_home_app/presentation/pages/sign_in.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.createPollRoute:
        return MaterialPageRoute(builder: (_) => const CreatePollPage());
      default:
        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }
}
