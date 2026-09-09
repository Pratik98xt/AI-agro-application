import 'package:firebase_core/firebase_core.dart';
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

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  try{
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDGqf1uia9RdKbweaz_3KUxTB19ddNkPJU", 
      appId: "1:998865978543:android:a7a24758a4bcefc0bbc05a", 
      messagingSenderId: "998865978543", 
      projectId: "agroapplication-becf6",
    )
  );
  print("✅ Firebase Connected Successfully");
  }
  catch (e) {
  print("❌ Firebase Error: $e");
}
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen()
    );
  }
}
