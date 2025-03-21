import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:flutter/material.dart';

class Ranking extends StatelessWidget {
  const Ranking({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Global Ranking', // Your title text
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
                Image.asset('assets/images/shield.png', width: 90, height: 90),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pearl League',
                      style: TextStyle(
                        fontFamily: 'Porter',
                        fontSize: 15,
                        color: Color(0xFFFFAADE),
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
                              'assets/images/emiliana.jpg',
                            ), // Replace with your image path
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
                              'assets/images/amanda.png',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Amanda Smith',
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
                              'assets/images/john.png',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'John Alvarèz',
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
                              'assets/images/saùl.png',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Saùl Niguèz',
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
                    _bottomNavItem(context, Icons.leaderboard, true, Ranking()),
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
