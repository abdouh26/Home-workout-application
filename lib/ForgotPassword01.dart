import 'package:Power_Team/ForgotPassword02.dart';
import 'package:flutter/material.dart';
import 'package:Power_Team/Connexion.dart';

class Forgotpassword01 extends StatelessWidget {
  const Forgotpassword01({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Allows content to adjust when keyboard appears
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/Bubbles01.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset("assets/images/Lock.png"),
            const SizedBox(height: 10),
            const Text(
              "Reset your password",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter your email address to receive\na temporary link to reset your password",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            _buildTextField('Email'),
            const SizedBox(height: 30), // Reduced space to prevent overflow
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Forgotpassword02(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF39C12),
                minimumSize: const Size(330, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: "Raleway",
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10), // Adjusted spacing
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Connexion()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(300, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: "Raleway",
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20), // Space at the bottom
          ],
        ),
      ),
    );
  }
}

Widget _buildTextField(String hint) {
  return SizedBox(
    width: 350,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
        filled: true,
        fillColor: const Color.fromARGB(255, 212, 212, 212),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
      ),
    ),
  );
}
