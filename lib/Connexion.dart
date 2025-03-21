import 'package:flutter/material.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Inscription.dart'; // Assurez-vous que la page d'inscription est bien importée
import 'package:Power_Team/ForgotPassword01.dart'; // Remplacez par la page réelle pour la réinitialisation du mot de passe

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  bool _obscurePassword = true; // Gérer la visibilité du mot de passe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Glad to see you again! 🖤",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            _buildTextField('Email'),
            const SizedBox(height: 15),
            _buildPasswordField(),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Forgotpassword01(),
                  ),
                );
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF39C12),
                ),
              ),
            ),
            const SizedBox(height: 60),
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: Colors.black),
                children: [
                  const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontFamily: 'Nunito'),
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Inscription(),
                          ),
                        );
                      },
                      child: const Text(
                        "Create your account!",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.orange,
                          decoration: TextDecoration.none,
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
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Raleway",
                  fontSize: 24,
                ),
              ),
            ),
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
        obscureText: _obscurePassword,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(color: Color.fromARGB(255, 110, 110, 110)),
          filled: true,
          fillColor: const Color.fromARGB(255, 212, 212, 212),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF1F1F1F),
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
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
