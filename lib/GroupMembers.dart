import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/FriendDiscussion.dart';
import 'package:Power_Team/FriendDiscussion2.dart';
import 'package:Power_Team/FriendDiscussion3.dart';
import 'package:Power_Team/FriendDiscussion4.dart';
import 'package:Power_Team/FriendDiscussion5.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class GroupMembers extends StatelessWidget {
  const GroupMembers({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20, 6, 0, 0), // Adjust the left padding
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
          'Members', // Your title text
          style: TextStyle(
            fontFamily: 'Oswald', // Use your custom font
            fontWeight: FontWeight.normal, // Adjust font weight
            fontSize: 20, // Set text size
            color: Colors.black, // Set text color
          ),
        ),
        centerTitle: true, // Centers the text
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Centers vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
          children: [
            SizedBox(height: 35),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/steve.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Steve Muprhe',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FriendDiscussion(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.message,
                              size: 25,
                              color: Color(0xFFF39C12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.videocam,
                            size: 25,
                            color: Color(0xFFF39C12),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/emily.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Emily Cruise',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FriendDiscussion2(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.message,
                              size: 25,
                              color: Color(0xFFF39C12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.videocam,
                            size: 25,
                            color: Color(0xFFF39C12),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/julia.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Julia Caen',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FriendDiscussion4(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.message,
                              size: 25,
                              color: Color(0xFFF39C12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.videocam,
                            size: 25,
                            color: Color(0xFFF39C12),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/mika.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Mika Smith',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FriendDiscussion3(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.message,
                              size: 25,
                              color: Color(0xFFF39C12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.videocam,
                            size: 25,
                            color: Color(0xFFF39C12),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/diana.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Diana Smith',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FriendDiscussion5(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.message,
                              size: 25,
                              color: Color(0xFFF39C12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.videocam,
                            size: 25,
                            color: Color(0xFFF39C12),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 1.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                  ],
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
                    _bottomNavItem(context, Icons.group, true, Groups()),
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
