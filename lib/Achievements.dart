import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF39C12), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/goldmedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFF39C12),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFF39C12),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF39C12), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/goldmedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFF39C12),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFF39C12),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF39C12), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/goldmedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFF39C12),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFF39C12),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFA0A0A0), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/graymedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Not Yet',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFA0A0A0), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/graymedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Not Yet',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFF39C12), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/goldmedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFF39C12),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Done',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFF39C12),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFA0A0A0), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/graymedal.jpg',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievement title",
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "you have won this title because you did well",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Text(
                  'Not Yet',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 13,
                    color: Color(0xFFA0A0A0),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
