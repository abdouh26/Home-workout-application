import 'package:Power_Team/FriendDiscussion.dart';
import 'package:Power_Team/FriendDiscussion2.dart';
import 'package:Power_Team/FriendDiscussion3.dart';
import 'package:Power_Team/FriendDiscussion4.dart';
import 'package:Power_Team/FriendDiscussion5.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:Power_Team/SearchFriends.dart';
import 'package:flutter/material.dart';

class Discussions extends StatelessWidget {
  const Discussions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discussions',
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
          Container(
            width: 370,
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for friends',
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
                    borderSide: BorderSide(color: Color(0xFFB2B2B2), width: 2),
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
                    borderSide: BorderSide(color: Color(0xFFF39C12), width: 2),
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
                          builder: (context) => SearchFriends(),
                        ),
                      );
                    },
                  ),
                  contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Divider(color: const Color(0xFFB7B7B7), thickness: 1.0, height: 0),

          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FriendDiscussion(),
                      ),
                    );
                  },
                  child: _chatTile(
                    context,
                    'Steve Murphe',
                    'Let\'s go to the gym',
                    '14:32',
                    'assets/images/steve.jpg',
                    true,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FriendDiscussion2(),
                      ),
                    );
                  },
                  child: _chatTile(
                    context,
                    'Emily Cruise',
                    'Your friend is waiting for u outside',
                    '14:20',
                    'assets/images/emily.jpg',
                    false,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FriendDiscussion3(),
                      ),
                    );
                  },
                  child: _chatTile(
                    context,
                    'Mika Smith',
                    'Replied to your story: GG!!!',
                    '10:17',
                    'assets/images/mika.jpg',
                    true,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FriendDiscussion4(),
                      ),
                    );
                  },
                  child: _chatTile(
                    context,
                    'Julia Caen',
                    'Can u go with me to the pool?',
                    '07:09',
                    'assets/images/julia.jpg',
                    false,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FriendDiscussion5(),
                      ),
                    );
                  },
                  child: _chatTile(
                    context,
                    'Diana Smith',
                    'You\'ve missed your boots',
                    'Yesterday',
                    'assets/images/diana.jpg',
                    false,
                  ),
                ),
              ],
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
                  _bottomNavItem(context, Icons.leaderboard, false, Ranking()),
                  _bottomNavItem(context, Icons.chat, true, Discussions()),
                  _bottomNavItem(context, Icons.group, false, Groups()),
                  _bottomNavItem(context, Icons.person, false, Profil()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _chatTile(
    BuildContext context,
    String name,
    String message,
    String time,
    String image,
    bool hasNotification,
  ) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(radius: 25, backgroundImage: AssetImage(image)),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      message,
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
                  SizedBox(height: 5),
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
        Divider(color: const Color(0xFFB7B7B7), thickness: 1.0, height: 0),
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
