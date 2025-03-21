import 'package:flutter/material.dart';
import 'dart:async';

import 'Inscription.dart';

class NormalLaunch extends StatefulWidget {
  const NormalLaunch({super.key});

  @override
  State<NormalLaunch> createState() => _NormalLaunchState();
}

class _NormalLaunchState extends State<NormalLaunch>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Fade-in animation for page appearance
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Fade-in duration
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_fadeController);

    _fadeController.forward(); // Start fade-in

    // Wait for 3 seconds, then fade out (1 sec fade-in + 1 sec fade-out)
    Timer(const Duration(seconds: 5), () {
      _fadeController.reverse().then((_) {
        // After fade-out, navigate with a smooth dissolve transition
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder:
                (context, animation, secondaryAnimation) => const Inscription(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(
              seconds: 2,
            ), // Smooth dissolve transition
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/Bubbles.png",
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PowerTeam",
                        style: TextStyle(
                          fontFamily: "YatraOne",
                          fontSize: 30,
                          color: Color(0xFFF39C12),
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        "assets/images/Dumbbell.png",
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Home is Where the Sweat Happens\nGet Fit Anytime, Anywhere",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 14,
                      height: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
