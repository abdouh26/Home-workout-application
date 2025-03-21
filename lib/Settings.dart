import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? _selectedGender; // For gender selection
  bool _isPasswordVisible = false; // Password visibility toggle
  bool _isNewPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20, 6, 0, 0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Color(0xFFF39C12),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                // Makes the form scrollable
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      // Form with Shadow
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildLabel("First name"),
                            _buildTextField(),

                            _buildLabel("Last name"),
                            _buildTextField(),

                            _buildLabel("Email"),
                            _buildTextField(),

                            _buildLabel("Sex"),
                            Row(
                              children: [
                                _buildRadioButton("Male"),
                                _buildRadioButton("Female"),
                              ],
                            ),

                            _buildLabel("Password"),
                            _buildPasswordField(_isPasswordVisible, (value) {
                              setState(() {
                                _isPasswordVisible = value;
                              });
                            }),

                            _buildLabel("New password"),
                            _buildPasswordField(_isNewPasswordVisible, (value) {
                              setState(() {
                                _isNewPasswordVisible = value;
                              });
                            }),

                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildLabel("Change profile picture"),
                                Container(
                                  padding: EdgeInsets.all(
                                    8,
                                  ), // Adjust padding inside the box
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFFF39C12),
                                      width: 1.2,
                                    ), // Outline border
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ), // Rounded corners
                                  ),
                                  child: Icon(
                                    Icons
                                        .photo_library, // Replace with any icon
                                    color: Color(0xFFF39C12),
                                    size: 20, // Adjust icon size
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(child: SizedBox()),
                                ElevatedButton(
                                  onPressed: () {
                                    // Save action
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF39C12),
                                    padding: EdgeInsets.symmetric(vertical: 7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _bottomNavItem(context, Icons.home, false, Home()),
                    _bottomNavItem(
                      context,
                      Icons.leaderboard,
                      false,
                      Ranking(),
                    ),
                    _bottomNavItem(context, Icons.chat, false, Discussions()),
                    _bottomNavItem(context, Icons.group, false, Groups()),
                    _bottomNavItem(context, Icons.person, true, Profil()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 5),
      child: Text(text, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  Widget _buildTextField() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
    );
  }

  Widget _buildPasswordField(bool isVisible, Function(bool) onToggle) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        obscureText: !isVisible,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          suffixIcon: IconButton(
            icon: Icon(
              isVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              onToggle(!isVisible);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: _selectedGender,
          onChanged: (newValue) {
            setState(() {
              _selectedGender = newValue.toString();
            });
          },
          activeColor: Color(0xFFF39C12),
        ),
        Text(value),
      ],
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  Widget _bottomNavItem(
    BuildContext context,
    IconData icon,
    bool isActive,
    Widget page,
  ) {
    return GestureDetector(
      onTap: () {
        if (!isActive) {
          _navigateTo(context, page);
        }
      },
      child: Icon(
        icon,
        size: 30,
        color: isActive ? Color(0xFFF39C12) : Colors.black,
      ),
    );
  }
}
