import 'package:Power_Team/ForgotPassword04.dart';
import 'package:flutter/material.dart';

class Forgotpassword03 extends StatefulWidget {
  const Forgotpassword03({super.key});

  @override
  State<Forgotpassword03> createState() => _Forgotpassword03State();
}

class _Forgotpassword03State extends State<Forgotpassword03> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/Lock.png"),
                SizedBox(height: 10),
                Text(
                  "Resest your password",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                _buildPasswordField('New password'),
                SizedBox(height: 10),
                _buildPasswordField('Confirm password'),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen when the button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Forgotpassword04(),
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
                    'Change password',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Raleway",
                      fontSize: 20,
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

  Widget _buildPasswordField(String text) {
    return SizedBox(
      width: 350,
      child: TextField(
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          hintText: text,
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
