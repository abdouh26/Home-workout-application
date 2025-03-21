import 'package:Power_Team/CreateGroup.dart';
import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/GroupDiscussion.dart';
import 'package:Power_Team/GroupDiscussion2.dart';
import 'package:Power_Team/GroupDiscussion3.dart';
import 'package:Power_Team/GroupDiscussion4.dart';
import 'package:Power_Team/GroupDiscussion5.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:Power_Team/SearchGroups.dart';
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Groups',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: 370,
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for groups',
                    hintStyle: TextStyle(
                      color: Color(0xFFB2B2B2),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
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
                        color: Color.fromARGB(255, 201, 201, 201),
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color(0xFFF39C12),
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchGroups(),
                          ),
                        );
                      },
                    ),
                    contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 22, 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateGroup()),
                    );
                  },
                  child: Text(
                    "+ Add a group",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFF39C12),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupDiscussion()),
                );
              },
              child: _groupItem(
                context,
                'Friends group',
                'Tracey: Let\'s go to the gym',
                '14:32',
                'assets/images/friendsgroup.jpg',
                true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupDiscussion2()),
                );
              },
              child: _groupItem(
                context,
                'Gym',
                'John: I\'m waiting for u outside',
                '14:20',
                'assets/images/gymgroup.jpg',
                false,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupDiscussion3()),
                );
              },
              child: _groupItem(
                context,
                'Family workout',
                'Mother: We\'ll start in 5 min',
                '10:17',
                'assets/images/familyworkoutgroup.jpg',
                true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupDiscussion4()),
                );
              },
              child: _groupItem(
                context,
                'Coach Julia\'s group',
                'Me: Can u go with me to the pool?',
                '07:09',
                'assets/images/coachjuliagroup.jpg',
                false,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroupDiscussion5()),
                );
              },
              child: _groupItem(
                context,
                'Fitness champions',
                'Lucia: You\'ve missed your boots',
                'Yesterday',
                'assets/images/fitnesschampionsgroup.jpg',
                false,
              ),
            ),
            Divider(color: const Color(0xFFB7B7B7), thickness: 1.0, height: 0),
            SizedBox(height: 60), // Extra space to prevent bottom overflow
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
    );
  }

  Widget _groupItem(
    BuildContext context,
    String title,
    String subtitle,
    String time,
    String imagePath,
    bool hasNotification,
  ) {
    return Column(
      children: [
        Divider(color: const Color(0xFFB7B7B7), thickness: 1.0, height: 0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Colors.black54,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  if (hasNotification) SizedBox(height: 5),
                  if (hasNotification)
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
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
