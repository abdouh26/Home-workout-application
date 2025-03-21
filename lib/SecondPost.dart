import 'package:Power_Team/SecondDetailedPost.dart';
import 'package:flutter/material.dart';

class SecondPost extends StatefulWidget {
  @override
  _SecondPostState createState() => _SecondPostState();
}

class _SecondPostState extends State<SecondPost> {
  bool isLiked = false; // State to track like button

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Profile Image
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/images/john.png'),
              ),
              SizedBox(width: 10),

              // Name & Timestamp
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      'John Alvarèz',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      '2 hours ago',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: Color(0xFF535353),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 2),
            child: Text(
              'Day Tip: Don\'t forget to stretch before exercise\nHave a good day!!!',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 15),
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

              // COMMENT BUTTON - Navigate to DetailedPost
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondDetailedPost(),
                    ),
                  );
                },
                icon: Icon(Icons.comment_outlined, color: Color(0xFF434343)),
                label: Text(
                  "Comment",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xFF434343),
                  ),
                ),
              ),

              // SHARE BUTTON - Opens popup
              TextButton.icon(
                onPressed: () {
                  _showSharePostPopup(context);
                },
                icon: Icon(Icons.north_east, color: Color(0xFF434343)),
                label: Text(
                  "Share",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xFF434343),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
