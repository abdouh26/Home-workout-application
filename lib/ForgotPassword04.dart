import 'package:flutter/material.dart';
import 'package:Power_Team/Connexion.dart';

class Forgotpassword04 extends StatelessWidget {
  const Forgotpassword04({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/Bubbles01.png",
              fit: BoxFit.cover,
            ),
          ),
          Image.asset("assets/images/Protect.png"),
          SizedBox(height: 10),
          Text(
            "Password is reset!",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "you have reset your password\nyou can login easily!",
            style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Connexion()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF39C12),
              minimumSize: const Size(330, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: "Raleway",
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
