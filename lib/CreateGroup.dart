import 'dart:ui' as ui;

import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupPageState createState() => _CreateGroupPageState();
}

class _CreateGroupPageState extends State<CreateGroup> {
  int membersCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFF39C12)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Create a group',
          style: TextStyle(fontFamily: 'Oswald', color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          // Handle profile picture selection
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFCC770),
                                shape: BoxShape.circle,
                              ),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "add a group profil picture",
                              style: TextStyle(color: Color(0xFFF39C12)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      buildTextField("Group name"),
                      buildTextField("Bio", maxLines: 3),
                      buildTextField("Group rules", maxLines: 3),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            "Maximum number of members :",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 10),
                          buildCounterButton(Icons.remove, () {
                            setState(() {
                              if (membersCount > 1) membersCount--;
                            });
                          }),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFFCC770),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "$membersCount",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          buildCounterButton(Icons.add, () {
                            setState(() {
                              membersCount++;
                            });
                          }),
                        ],
                      ),
                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle group creation
                          },
                          icon: Icon(Icons.create, color: Colors.white),
                          label: Text("Create"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF39C12),
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
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

  Widget buildTextField(String label, {int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: "Type Here",
              filled: true,
              fillColor: Colors.grey[300],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCounterButton(IconData icon, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFFCC770),
        minimumSize: ui.Size(25, 25),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Icon(icon, size: 18, color: Colors.black),
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
