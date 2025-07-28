import 'package:flutter/material.dart';

import 'go_ride_splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display',
      ),
      home: GoRideSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
