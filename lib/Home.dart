import 'package:Power_Team/CreatePost.dart';
import 'package:Power_Team/FirstDetailedPost.dart';
import 'package:Power_Team/DianaStory.dart';
import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/EmilyStory.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/JuliaStory.dart';
import 'package:Power_Team/MikaStory.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:Power_Team/SecondDetailedPost.dart';
import 'package:Power_Team/SteveStory.dart';
import 'package:Power_Team/ThirdDetailedPost.dart';
import 'package:flutter/material.dart';
import 'FirstPost.dart';
import 'SecondPost.dart';
import 'ThirdPost.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  void _openGallery() {
    // Implement the method to open the gallery
  }

  void _openCamera() {
    // Implement the method to open the camera
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Power Team',
                style: TextStyle(
                  fontFamily: 'YatraOne',
                  color: Color(0xFFF39C12),
                ),
              ),
              SizedBox(width: 10),
              Image.asset("assets/images/Dumbbell.png", width: 30, height: 30),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, Profil());
                            },
                            child: Container(
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  'assets/images/emiliana.jpg',
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, CreatePost());
                            },
                            child: Container(
                              width: 250,
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Express what you feel',
                                style: TextStyle(
                                  color: Color(0xFFB2B2B2),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _openGallery,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFF39C12),
                                  width: 1.2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.photo_library,
                                color: Color(0xFFF39C12),
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: _openCamera,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 2,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                          'assets/images/emiliana.jpg',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -2,
                                      right: -2,
                                      child: Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("You", style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, SteveStory());
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange, // Stroke color
                                      width: 2, // Stroke width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/steve.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Steve', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, EmilyStory());
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange, // Stroke color
                                      width: 2, // Stroke width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/emily.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Emily', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, MikaStory());
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange, // Stroke color
                                      width: 2, // Stroke width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/mika.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Mika', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, JuliaStory());
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange, // Stroke color
                                      width: 2, // Stroke width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/julia.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Julia', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _navigateTo(context, DianaStory());
                            },
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.orange, // Stroke color
                                      width: 2, // Stroke width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      'assets/images/diana.png',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Diana', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          _navigateTo(context, DetailedPost());
                        },
                        child: Firstpost(),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          _navigateTo(context, SecondDetailedPost());
                        },
                        child: SecondPost(),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          _navigateTo(context, ThirdDetailedPost());
                        },
                        child: ThirdPost(),
                      ),
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
                    _bottomNavItem(context, Icons.home, true, Home()),
                    _bottomNavItem(
                      context,
                      Icons.leaderboard,
                      false,
                      Ranking(),
                    ),
                    _bottomNavItem(context, Icons.chat, false, Discussions()),
                    _bottomNavItem(context, Icons.group, false, Groups()),
                    _bottomNavItem(context, Icons.person, false, Profil()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
