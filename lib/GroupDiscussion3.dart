import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groupdetails3.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class GroupDiscussion3 extends StatelessWidget {
  const GroupDiscussion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 167, 167, 167),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  blurRadius: 6, // Spread of the shadow
                  offset: Offset(0, 4), // Shadow positioned at the bottom
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                    color: Color(0xFFF39C12),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GroupDetails3()),
                    );
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/familyworkoutgroup.jpg',
                    ),
                    radius: 20,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Family workout",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                IconButton(
                  icon: Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
                  onPressed: () {
                    // Action when button is pressed
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.videocam,
                    size: 25,
                    color: Color(0xFFF39C12),
                  ),
                  onPressed: () {
                    // Action when button is pressed
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/emily.png',
                          ),
                          radius: 13,
                        ),
                        SizedBox(width: 5),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Emily',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/steve.png',
                          ),
                          radius: 13,
                        ),
                        SizedBox(width: 5),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Steve',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/julia.png',
                          ),
                          radius: 13,
                        ),
                        SizedBox(width: 5),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Julia',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/diana.png',
                          ),
                          radius: 13,
                        ),
                        SizedBox(width: 5),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Diana',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/mika.png'),
                          radius: 13,
                        ),
                        SizedBox(width: 5),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mika',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFE8E8E8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'You',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF39C12),
                                  ),
                                ),
                                Text(
                                  'consectetur. Ac quam lorem in mi mauris sit senectus.',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '10:49',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromARGB(
                                          255,
                                          112,
                                          112,
                                          112,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 212, 212, 212),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.attach_file, size: 25, color: Color(0xFFF39C12)),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a message",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 94, 94, 94),
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 244, 244, 244),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 244, 244, 244),
                          width: 1.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xFFF39C12),
                        size: 22,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.send, size: 25, color: Color(0xFFF39C12)),
              ],
            ),
          ),

          // Divider
          Divider(color: const Color(0xFFB7B7B7), thickness: 1.0, height: 0),

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
