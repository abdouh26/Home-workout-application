import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class GroupsRanking extends StatelessWidget {
  const GroupsRanking({super.key}); // Add 'const'

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
          'Groups Ranking', // Your title text
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/grayshield.png',
                  width: 90,
                  height: 90,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Silver League',
                      style: TextStyle(
                        fontFamily: 'Porter',
                        fontSize: 15,
                        color: Color(0xFFC0C0C0),
                      ),
                    ),
                    Text(
                      'This round will end in : 11:47:32',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Divider(
              color: const Color(0xFFB7B7B7), // Set color of the line
              thickness: 1.0, // Set thickness of the line
              height: 0, // Adjust space above and below
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(
                      color: const Color(0xFFB7B7B7), // Set color of the line
                      thickness: 2.0, // Set thickness of the line
                      height: 0, // Adjust space above and below
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/friendsgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Friends group',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Image.asset(
                            'assets/images/greenup.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '1540 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '2',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/gymgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Gym',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Image.asset(
                            'assets/images/greenup.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '1320 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '3',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/familyworkoutgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Family workout',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '1210 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '4',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/gymgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Gym',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '1080 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '5',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/coachjuliagroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Coach Julia\'s group',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '995 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '6',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/fitnesschampionsgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Fitness champions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '910 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '7',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/familyworkoutgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Family workout',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '885 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '8',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/friendsgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Friends group',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '850 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '9',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/fitnesschampionsgroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Fitness champions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          SizedBox(width: 10),
                          Text(
                            '420 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
                          Text(
                            '10',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 15),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/coachjuliagroup.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Coach Julia\'s group',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Image.asset(
                            'assets/images/reddown.png',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '400 XP',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
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
