import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class MembersRanking extends StatelessWidget {
  const MembersRanking({super.key}); // Add 'const'

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
          'Members Ranking', // Your title text
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
                          Text(
                            'pearl',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFFFFAADE),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '140 XP',
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'amethyst',
                              style: TextStyle(
                                fontFamily: 'Porter',
                                fontSize: 8,
                                color: Color(0xFFCE82FF),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '100 XP',
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              'amethyst',
                              style: TextStyle(
                                fontFamily: 'Porter',
                                fontSize: 8,
                                color: Color(0xFFCE82FF),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '80 XP',
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
                          Text(
                            'emerald',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFF78C900),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '200 XP',
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
                          Text(
                            'emerald',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFF78C900),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '180 XP',
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
                          Text(
                            'ruby',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFFFF4B4B),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '140 XP',
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
                          Text(
                            'Sapphire',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFF1CB0F6),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '150 XP',
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
                            'john alvarèz',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'gold',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFFFEC701),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '220 XP',
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
                          Text(
                            'gold',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFFFEC701),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '165 XP',
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
                          Text(
                            'silver',
                            style: TextStyle(
                              fontFamily: 'Porter',
                              fontSize: 10,
                              color: Color(0xFFC3D1DE),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '110 XP',
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
