import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class GoRideSplashScreen extends StatelessWidget {
  const GoRideSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF00C853), // Bright green background
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo
              Icon(
                Icons.directions_bike, // Use a placeholder or replace with your custom logo
                size: 100,
                color: Colors.white,
              ),

              SizedBox(height: 20),

              // App Name
              Text(
                'GoRide',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),

              SizedBox(height: 40),

              // Loading Indicator
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                strokeWidth: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Usage in your main app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display', // iOS-like font
      ),
      home: const GoRideSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

