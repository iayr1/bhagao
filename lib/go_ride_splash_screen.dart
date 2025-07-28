import 'package:flutter/material.dart';
import 'go_ride_onboarding_screen.dart'; // Import your onboarding screen

class GoRideSplashScreen extends StatefulWidget {
  const GoRideSplashScreen({super.key});

  @override
  State<GoRideSplashScreen> createState() => _GoRideSplashScreenState();
}

class _GoRideSplashScreenState extends State<GoRideSplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to onboarding screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GoRideOnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF00C853), // Bright green background
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.directions_bike,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(height: 20),
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
