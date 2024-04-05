import 'package:adapt_app/screens/register_screen.dart';
import 'package:adapt_app/screens/forgot_password.dart';
import 'package:adapt_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image.asset("assets/images/p2.png"),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            
            const Text(
              "Please log in to our app!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(158, 0, 0, 0),
              ),
            ),
            
            const SizedBox(height: 15),
            const InputField(label: "Enter your email"),
            const SizedBox(height: 15),
            const InputField(label: "Enter your password"),
            const SizedBox(height: 15),
            

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 66, 53, 247),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minimumSize: const Size.fromHeight(52),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFDEEAE8),
                ),
              ),
            ),

            const SizedBox(height: 20),


            Text.rich(
              TextSpan(
                text: "Don't have an account ? ",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                children: [
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      ),
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 66, 53, 247),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ForgotPassword(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 231, 230, 248),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                    
                minimumSize: const Size.fromHeight(52),
              ),
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 53, 247),
                ),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
