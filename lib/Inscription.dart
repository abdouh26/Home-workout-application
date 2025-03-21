import 'package:flutter/material.dart';
import 'package:Power_Team/GenderSelection.dart';
import 'package:Power_Team/ColoredCheckbox.dart';
import 'package:Power_Team/Connexion.dart';
import 'package:Power_Team/Home.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Fixes keyboard overflow issue
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Bubbles02.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text(
                    'Create\nYour account',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            GenderSelection(),
            const SizedBox(height: 10),
            _buildTextField('First name'),
            const SizedBox(height: 10),
            _buildTextField('Last name'),
            const SizedBox(height: 10),
            _buildTextField('Email'),
            const SizedBox(height: 10),
            _buildPasswordField(),
            const SizedBox(height: 10),
            ColoredCheckbox(),
            const SizedBox(height: 10),

            // Clickable "Log in" text
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.black),
                children: [
                  const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(fontFamily: 'Nunito'),
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Connexion(),
                          ),
                        );
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Register button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF39C12),
                minimumSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Raleway",
                  fontSize: 24,
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return SizedBox(
      width: 350,
      child: TextField(
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

  Widget _buildPasswordField() {
    return SizedBox(
      width: 350,
      child: TextField(
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
          filled: true,
          fillColor: const Color.fromARGB(255, 212, 212, 212),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          // Toggle password visibility
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: const Color(0xFF1F1F1F),
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        ),
      ),
    );
  }
}
