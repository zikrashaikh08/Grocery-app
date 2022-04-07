import 'package:animation_2/constant/routes.dart';
import 'package:animation_2/screens/SplashScreen.dart';
import 'package:animation_2/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/LoginPage.dart';
import 'utilis/Routes.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            shape: StadiumBorder(),
            backgroundColor: primaryColor,
          ),
        ),
      ),
      routes: {
        // "/": (context) => Loginpage(),
        // MyRoutes.homeinRoute: (context) => HomeScreen(),
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.loginScreen: (context) => Loginpage(),
        Routes.homeScreen: (context) => HomeScreen()
      },
      home: SplashScreen(),
    );
  }
}
