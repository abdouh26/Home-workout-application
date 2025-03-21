import 'package:Power_Team/FriendDiscussion.dart';
import 'package:Power_Team/FriendDiscussion2.dart';
import 'package:Power_Team/FriendDiscussion3.dart';
import 'package:Power_Team/FriendDiscussion4.dart';
import 'package:Power_Team/FriendDiscussion5.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FriendDiscussion()),
                  );
                },
                child: Icon(Icons.message, size: 25, color: Color(0xFFF39C12)),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
              SizedBox(width: 10),
              Icon(Icons.videocam, size: 25, color: Color(0xFFF39C12)),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendDiscussion2(),
                    ),
                  );
                },
                child: Icon(Icons.message, size: 25, color: Color(0xFFF39C12)),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
              SizedBox(width: 10),
              Icon(Icons.videocam, size: 25, color: Color(0xFFF39C12)),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendDiscussion4(),
                    ),
                  );
                },
                child: Icon(Icons.message, size: 25, color: Color(0xFFF39C12)),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
              SizedBox(width: 10),
              Icon(Icons.videocam, size: 25, color: Color(0xFFF39C12)),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendDiscussion3(),
                    ),
                  );
                },
                child: Icon(Icons.message, size: 25, color: Color(0xFFF39C12)),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
              SizedBox(width: 10),
              Icon(Icons.videocam, size: 25, color: Color(0xFFF39C12)),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendDiscussion5(),
                    ),
                  );
                },
                child: Icon(Icons.message, size: 25, color: Color(0xFFF39C12)),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone, size: 25, color: Color(0xFFF39C12)),
              SizedBox(width: 10),
              Icon(Icons.videocam, size: 25, color: Color(0xFFF39C12)),
            ],
          ),
        ),
        Divider(
          color: const Color(0xFFB7B7B7), // Set color of the line
          thickness: 1.0, // Set thickness of the line
          height: 0, // Adjust space above and below
        ),
      ],
    );
  }
}
