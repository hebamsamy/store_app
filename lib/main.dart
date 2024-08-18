import 'package:appp/Screens/ExploreScreen.dart';
import 'package:appp/Screens/HomeScreen.dart';
import 'package:appp/Screens/JoinScreen.dart';
import 'package:appp/Screens/WelcomeScreen.dart';
import 'package:appp/Screens/productsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Welcomescreen(),
      initialRoute: "/",
      routes: {
        Welcomescreen.screenName: (context)=> Welcomescreen(),
        Joinscreen.screenName:(context)=>Joinscreen(),
        Explorescreen.screenName:(context)=>Explorescreen(),
        Productsscreen.screenName : (context)=>Productsscreen(),
        HomeScreen.screenName : (context)=>HomeScreen()
      },
    );
  }
}
