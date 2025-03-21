import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class DetailedPost extends StatefulWidget {
  const DetailedPost({super.key});

  _DetailedPostState createState() => _DetailedPostState();
}

class _DetailedPostState extends State<DetailedPost> {
  bool isLiked = false; // State to track like button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.fromLTRB(20, 6, 0, 0), // Adjust left padding
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Color(0xFFF39C12),
            ),
            onPressed: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ),
        title: Text(
          'Post',
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
          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/amanda.png',
                                ),
                                radius: 20,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amanda Smith",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "Just Now",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'It’s a good idea to start your day with yoga    ​☺️​😀',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/yogaGirl.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),

                    // Like, Comment, Share Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // LIKE BUTTON
                        TextButton.icon(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked; // Toggle like state
                            });
                          },
                          icon: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Color(0xFF434343),
                          ),
                          label: Text(
                            "Like",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              color: isLiked ? Colors.red : Color(0xFF434343),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor:
                                isLiked
                                    ? Colors.red.withOpacity(0.2)
                                    : Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        _buildTextButton(Icons.comment_outlined, "Comment"),
                        _buildTextButton(
                          Icons.north_east,
                          "Share",
                          onPressed: () {
                            _showSharePostPopup(context);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // 📝 Comment Row (Added Back)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
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
                                        'Just Now',
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
                                        'Just Now',
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
                                        'Just Now',
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
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),

          // 📝 Fixed Comment Input Field
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xFFB7B7B7), width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.attach_file, size: 25, color: Color(0xFFF39C12)),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a comment",
                      hintStyle: TextStyle(
                        color: Color(0xFFB2B2B2),
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Color(0xFFB7B7B7),
                          width: 1.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 1.5),
                      ),
                      suffixIcon: Icon(
                        Icons.emoji_emotions_outlined,
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

          // 🏠 Fixed Bottom Navigation Bar
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
                  _bottomNavItem(context, Icons.leaderboard, false, Ranking()),
                  _bottomNavItem(context, Icons.chat, false, Discussions()),
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

  // Helper function to create TextButton with an icon
  Widget _buildTextButton(
    IconData icon,
    String label, {
    VoidCallback? onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Color(0xFF434343)),
      label: Text(
        label,
        style: TextStyle(fontSize: 12, color: Color(0xFF434343)),
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

  void _showSharePostPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows full height usage
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ), // No rounding at the bottom
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom:
                MediaQuery.of(context).viewInsets.bottom, // Adjust for keyboard
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Share a post",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/emiliana.png',
                      ), // Replace with actual image
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Emiliana Kendl", // Replace with actual user data
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Anything to add?",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close bottom sheet
                      // Add share logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF39C12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Post Now"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
