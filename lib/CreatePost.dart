import 'package:flutter/material.dart';
import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20, 6, 0, 0), // Adjust left padding
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Color(0xFFF39C12),
            ),
            onPressed: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ),
        title: Text(
          'Create a post',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: ElevatedButton.icon(
              onPressed: () {
                // Action when button is pressed
              },
              icon: Icon(Icons.edit, size: 15, color: Colors.white),
              label: Text(
                "Post",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 11,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF39C12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/emiliana.jpg'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Emiliana Kendl',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      hintText: 'What do you think of?',
                      hintStyle: TextStyle(
                        color: Color(0xFFB2B2B2),
                        fontFamily: 'Poppins',
                        fontSize: 11,
                      ),
                      filled: true,
                      fillColor: Color(0xFFE0E0E0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFB2B2B2),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFC9C9C9),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xFFF39C12),
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),

          // Add Picture/Video Section
          _buildBottomSection(),

          // Bottom Navigation Bar
          _buildBottomNavBar(context),
        ],
      ),
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
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
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.photo_library, color: Color(0xFFF39C12), size: 30),
                SizedBox(width: 5),
                Text(
                  'Add pictures / videos',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(color: Color(0xFFB7B7B7), thickness: 1.0, height: 0),
      ],
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
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
            _bottomNavItem(context, Icons.home, true, Home()),
            _bottomNavItem(context, Icons.leaderboard, false, Ranking()),
            _bottomNavItem(context, Icons.chat, false, Discussions()),
            _bottomNavItem(context, Icons.group, false, Groups()),
            _bottomNavItem(context, Icons.person, false, Profil()),
          ],
        ),
      ),
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
