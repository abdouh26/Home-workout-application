import 'package:flutter/material.dart';
import 'package:Power_Team/Discussions.dart';

class FirstLaunch extends StatelessWidget {
  const FirstLaunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Bubbles.png",
              width: 300,
              height: 300,
              fit: BoxFit.cover, // Ensures it fits correctly
            ),
            const SizedBox(height: 100), // Adds space of 100 pixels
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Power Team",
                      style: TextStyle(
                        fontFamily: "YatraOne",
                        fontSize: 30,
                        color: Color(0xFFF39C12),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      "assets/images/Dumbbell.png",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Home is Where the Sweat Happens\nGet Fit Anytime, Anywhere",
                  style: TextStyle(fontFamily: "Nunito", fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Discussions(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF39C12),
                    minimumSize: const Size(350, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Let\'s go',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Raleway",
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
