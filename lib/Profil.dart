import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Inscription.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:Power_Team/Settings.dart';
import 'package:flutter/material.dart';
import 'Posts.dart';
import 'Friends.dart';
import 'Achievements.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _selectedIndex = 0;

  final List<Widget> _contentWidgets = [Posts(), Friends(), Achievements()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app, color: Color(0xFFF39C12)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inscription()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Color(0xFFF39C12)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/emiliana.png'),
            radius: 60,
          ),
          SizedBox(height: 10),
          Text(
            'Emiliana Kendl',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          Text('Since Oct, 2024', style: TextStyle(fontSize: 14)),
          SizedBox(height: 10),

          // Clickable Row
          Padding(
            padding: EdgeInsets.only(left: 50, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildClickableText("20\nPosts", 0),
                Expanded(child: SizedBox()),
                _buildClickableText("15\nFriends", 1),
                SizedBox(width: 60),
                _buildClickableText("4\nAchievements", 2),
              ],
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFAADE), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/shield.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Pearl League',
                    style: TextStyle(
                      fontFamily: 'Porter',
                      fontSize: 15,
                      color: Color(0xFFFFAADE),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Divider(
              color: const Color(0xFFB7B7B7),
              thickness: 1.0,
              height: 0,
            ),
          ),

          // Dynamic Content in SingleChildScrollView
          Expanded(
            child: SingleChildScrollView(
              child: _contentWidgets[_selectedIndex],
            ),
          ),

          // Bottom Navigation
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
                  _bottomNavItem(context, Icons.leaderboard, false, Ranking()),
                  _bottomNavItem(context, Icons.chat, false, Discussions()),
                  _bottomNavItem(context, Icons.group, false, Groups()),
                  _bottomNavItem(context, Icons.person, true, Profil()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClickableText(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: _selectedIndex == index ? Color(0xFFF39C12) : Colors.black,
        ),
        textAlign: TextAlign.center,
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
