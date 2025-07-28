import 'package:bhagao/go_ride_signin_screen.dart';
import 'package:bhagao/go_ride_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoRideWelcomeScreen extends StatelessWidget {
  const GoRideWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Logo
              Column(
                children: [
                  Image.asset(
                    'assets/images/goride_logo.png', // Replace with actual logo
                    height: 100,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "Let's Get Started!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Let's dive in into your account",
                    style: TextStyle(color: Colors.white54, fontSize: 14),
                  ),
                ],
              ),

              // Social Login Buttons
              Column(
                children: [
                  _buildSocialButton(
                    icon: FontAwesomeIcons.google,
                    text: 'Continue with Google',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                  _buildSocialButton(
                    icon: FontAwesomeIcons.apple,
                    text: 'Continue with Apple',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                  _buildSocialButton(
                    icon: FontAwesomeIcons.facebook,
                    text: 'Continue with Facebook',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                  _buildSocialButton(
                    icon: FontAwesomeIcons.xTwitter,
                    text: 'Continue with X',
                    onPressed: () {},
                  ),
                ],
              ),

              // Sign up & Sign in buttons
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => GoRideSignUpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00C853),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: const Text("Sign up"),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => GoRideSignInScreen()));
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white30),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: const Text("Sign in"),
                  ),
                ],
              ),

              // Footer
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "·",
                    style: TextStyle(color: Colors.white38),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Terms of Service",
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: FaIcon(icon, size: 20),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1C1C1E),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        alignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}
