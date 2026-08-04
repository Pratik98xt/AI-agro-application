import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/ai_chat_screen.dart';
import 'package:flutter_application_1/Screens/crop_recommendation_screen.dart';
import 'package:flutter_application_1/Screens/fertilizer_recommendation_screen.dart';
import 'package:flutter_application_1/Screens/home_screen.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:flutter_application_1/Screens/market_price_screen.dart';
import 'package:flutter_application_1/Screens/profile_screen.dart';
import 'package:flutter_application_1/Screens/scan_crop_screen.dart';
import 'package:flutter_application_1/Screens/signup_screen.dart';

import 'package:flutter_application_1/Screens/splashScreen.dart';
import 'package:flutter_application_1/Screens/weather_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen()
    );
  }
}
