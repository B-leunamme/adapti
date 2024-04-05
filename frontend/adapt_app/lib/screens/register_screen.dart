import 'package:adapt_app/screens/login_screen.dart';
import 'package:adapt_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              "New Account",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Create your account and join our family",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            const InputField(label: "Enter your full name"),
            const SizedBox(height: 20),
            const InputField(label: "Enter your email id"),
            const SizedBox(height: 20),
            const InputField(label: "Enter Password"),
            const SizedBox(height: 20),
            const InputField(label: "Enter confirm password"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 89, 27, 202),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minimumSize: const Size.fromHeight(52),
              ),
              child: const Text(
                "Register",
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
                        "Sign in",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 89, 27, 202),
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
