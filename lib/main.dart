import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:take_home_app/data/routes/route_string.dart';
import 'package:take_home_app/resource/colors_manager.dart';
import 'package:take_home_app/resource/strings_manager.dart';

import 'data/routes/route_generator.dart';

SharedPreferences? prefs;
bool isLogin = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: StringManager.apiKey,
      appId: StringManager.appId,
      projectId: StringManager.projectId,
      messagingSenderId: StringManager.senderId,
    ),
  );
  prefs = await SharedPreferences.getInstance();
  isLogin = prefs!.getBool('isLogin') ?? false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: isLogin ? AppRoutes.homeRoute : AppRoutes.signInRoute,
      title: 'Take Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.gradient,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: ColorManager.white),
        ),
      ),
    );
  }
}
