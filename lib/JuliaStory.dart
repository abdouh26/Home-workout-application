import 'package:flutter/material.dart';

class JuliaStory extends StatefulWidget {
  const JuliaStory({super.key});

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<JuliaStory> {
  bool isLiked = false; // Track heart icon state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background Color
          Container(color: Colors.black),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: LinearProgressIndicator(
                  value: 0.5, // Adjust progress
                  backgroundColor: Colors.grey[700],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),

              // Profile & Close Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/julia.png'),
                      radius: 20,
                    ),
                    SizedBox(width: 10),

                    // Name & Timestamp
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Julia Caen",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Just Now",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),

                    Spacer(),

                    // Close Button
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white, size: 25),
                      onPressed: () {
                        Navigator.pop(context); // Close and go back
                      },
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),

              // Story Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Good Morning ☀️🌊",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Image.asset(
                "assets/images/yogagroup.jpg", // Replace with actual image
                fit: BoxFit.cover,
              ),

              // Story Image
              Expanded(child: SizedBox()),
            ],
          ),

          // Reply & Heart Button (Fixed at Bottom)
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Row(
              children: [
                // Reply TextField (Now Editable)
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Write a reply",
                      hintStyle: TextStyle(color: Colors.white70),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                // Heart Icon (Toggle Between Filled & Outlined)
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.white,
                    size: 28,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked; // Toggle heart state
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
