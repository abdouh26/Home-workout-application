import 'package:Power_Team/ForgotPassword03.dart';
import 'package:flutter/material.dart';

class Forgotpassword02 extends StatelessWidget {
  const Forgotpassword02({super.key}); // Add 'const'

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
          Image.asset("assets/images/Received.png"),
          SizedBox(height: 10),
          Text(
            "the link is sent!",
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "you will receive a link to reset your password at\nthe following address: youremail@gmail.com",
            style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Forgotpassword03(),
                ),
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
              'Open Gmail',
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
