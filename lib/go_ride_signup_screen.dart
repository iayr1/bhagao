import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoRideSignUpScreen extends StatefulWidget {
  const GoRideSignUpScreen({super.key});

  @override
  State<GoRideSignUpScreen> createState() => _GoRideSignUpScreenState();
}

class _GoRideSignUpScreenState extends State<GoRideSignUpScreen> {
  bool agreeToTerms = false;
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const Text(
                "Join GoRide Today ✨",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Let's get started! Enter your phone number to\ncreate your GoRide account.",
                style: TextStyle(color: Colors.white60),
              ),
              const SizedBox(height: 24),

              // Phone Number Input
              const Text(
                "Phone Number",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF1C1C1E),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text("🇺🇸", style: TextStyle(fontSize: 18)),
                        SizedBox(width: 4),
                        Icon(Icons.keyboard_arrow_down, color: Colors.white54),
                        SizedBox(width: 4),
                        VerticalDivider(color: Colors.white30),
                      ],
                    ),
                  ),
                  hintText: "Phone Number",
                  hintStyle: const TextStyle(color: Colors.white38),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Terms Checkbox
              Row(
                children: [
                  Checkbox(
                    value: agreeToTerms,
                    onChanged: (value) => setState(() => agreeToTerms = value ?? false),
                    activeColor: const Color(0xFF00C853),
                  ),
                  const Text(
                    "I agree to GoRide ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Terms & Conditions.",
                      style: TextStyle(color: Color(0xFF00C853)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Sign in Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(color: Color(0xFF00C853)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Divider
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.white24)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text("or", style: TextStyle(color: Colors.white60)),
                  ),
                  Expanded(child: Divider(color: Colors.white24)),
                ],
              ),

              const SizedBox(height: 24),

              // Social Buttons
              _buildSocialButton(
                icon: FontAwesomeIcons.google,
                text: "Continue with Google",
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              _buildSocialButton(
                icon: FontAwesomeIcons.apple,
                text: "Continue with Apple",
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              _buildSocialButton(
                icon: FontAwesomeIcons.facebook,
                text: "Continue with Facebook",
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              _buildSocialButton(
                icon: FontAwesomeIcons.xTwitter,
                text: "Continue with X",
                onPressed: () {},
              ),

              const SizedBox(height: 24),

              // Sign Up Button
              ElevatedButton(
                onPressed: agreeToTerms ? () {} : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00C853),
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.white12,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Text("Sign up"),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
