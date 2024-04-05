import 'package:adapt_app/screens/login_screen.dart';
import 'package:adapt_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          children: [
            const SizedBox(height: 150),
            const Text(
              "Forgot your password?",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Don't worry!! After submitting this form, we will send you a new password via email to log in. We also recommend changing it after logging in for security and privacy reasons.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const InputField(label: "Enter your email"),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 29, 66, 231),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
                minimumSize: const Size.fromHeight(52),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFDEEAE8),
                ),
              ),
            ),
            

            
            const SizedBox(height: 30),
            Text.rich(
              TextSpan(
                text: "Already have an account ? ",
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 29, 66, 231),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
