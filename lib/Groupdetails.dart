import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/GroupInfo.dart';
import 'package:Power_Team/GroupMembers.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/GroupsRanking.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/MembersRanking.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class GroupDetails extends StatelessWidget {
  const GroupDetails({super.key});

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
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/friendsgroup.jpg'),
            radius: 60,
          ),
          SizedBox(height: 10),
          Text(
            'Friends group',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 2),
          Text('12 Online', style: TextStyle(fontSize: 14)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(minWidth: 60),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF39C12),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 15, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Call',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                constraints: BoxConstraints(minWidth: 60),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF39C12),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.videocam, size: 15, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Video',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                constraints: BoxConstraints(minWidth: 60),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF39C12),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications, size: 15, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Mute',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                constraints: BoxConstraints(minWidth: 60),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF39C12),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 15, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupInfo()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF39C12), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                      color: Color(0xFFF39C12),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Infos',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupMembers()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF39C12), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.group, size: 30, color: Color(0xFFF39C12)),
                    SizedBox(width: 10),
                    Text(
                      'Members',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MembersRanking()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF39C12), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.leaderboard_outlined,
                      size: 30,
                      color: Color(0xFFF39C12),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Members ranking',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroupsRanking()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF39C12), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.leaderboard_outlined,
                      size: 30,
                      color: Color(0xFFF39C12),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Groups ranking',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: SizedBox()),
                ElevatedButton.icon(
                  onPressed: () {
                    // Your button action
                  },
                  icon: Icon(
                    Icons.exit_to_app_outlined,
                    color: Colors.white,
                  ), // Your icon
                  label: Text("Leave group"), // Your text
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Button color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5,
                      ), // Adjust border radius here
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()), // Bottom Navigation
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
                  _bottomNavItem(context, Icons.group, true, Groups()),
                  _bottomNavItem(context, Icons.person, false, Profil()),
                ],
              ),
            ),
          ),
        ],
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
