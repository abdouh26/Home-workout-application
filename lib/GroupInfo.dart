import 'package:Power_Team/Discussions.dart';
import 'package:Power_Team/Groups.dart';
import 'package:Power_Team/Home.dart';
import 'package:Power_Team/Profil.dart';
import 'package:Power_Team/Ranking.dart';
import 'package:flutter/material.dart';

class GroupInfo extends StatelessWidget {
  const GroupInfo({super.key}); // Add 'const'

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
          'Infos', // Your title text
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
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/friendsgroup.jpg',
                    width: 70,
                    height: 70,
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends group',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'created on 12-04-2024',
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
            ),
            SizedBox(height: 35),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Group coach',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(
                              'assets/images/steve.jpg',
                            ), // Replace with your image path
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Steve Muprhe',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur In massa lacinia nec pellentesque molestie eros. Ornare magna sit malesuada faucibus non faucibus sed hendrerit. Ut metus neque tellus mollis blandit lectus aliquam bibendum phasellus. A ac imperdiet nec neque nisl feugiat In tortor suscipit ante quam. Ac porttitor pulvinar eleifend hac. Arcu suspendisse et enim nec at dignissim dictum. Ultrices dolor non ultrices  elementum et feugiat id mattis. Molestie nec tortor aliquam sem sed quis fames. Ornare mi.',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Rules',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '1. Lorem ipsum dolor sit amet consectetur. Nisl nulla pellentesque eros tellus congue erat scelerisque\n2. augue congue. Non pulvinar suspendisse egestas amet viverra hac vitae commodo. Orci ac porttitor dignissim viverra. Viverra a senectus felis malesuada\n3. pellentesque ut imperdiet. Sed in massa egestas faucibus morbi lorem lorem semper. Eros mauris feugiat nunc amet lacinia. Integer vel dolor nisl tincidunt\n4. posuere posuere et. Diam mattis amet lectus egestas. Condimentum duis tincidunt ullamcorper sem eleifend lacus rhoncus nunc condimentum. Sed suspendisse\n5. sed nisl tristique suspendisse pellentesque sit et laoreet. Aliquet fringilla felis lectus diam tellus dui. Amet morbi nec vestibulum vulputate diam massa.\n6. Et vel lobortis morbi mauris ut ultrices a cras. Interdum dui sodales cum nisi. Libero fermentum pellentesque\n7. nulla condimentum sed sodales quam ut dictum. Nisl potenti adipiscing laoreet scelerisque. Ut nullam mauris amet in.',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 10),
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
