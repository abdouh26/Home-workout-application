import 'package:flutter/material.dart';
import 'package:Power_Team/Discussions.dart';

class SearchFriends extends StatelessWidget {
  const SearchFriends({super.key}); // Add 'const'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for friends',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 110, 110, 110),
                ), // Placeholder text
                filled: true, // Enables background color
                fillColor: const Color.fromARGB(
                  255,
                  212,
                  212,
                  212,
                ), // Light background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                  borderSide: BorderSide.none, // No default border
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 161, 161, 161),
                    width: 2,
                  ), // Border when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 161, 161, 161),
                    width: 2,
                  ), // Border when focused
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFFF39C12),
                  ), // Styled icon
                  onPressed: () {
                    //On pressed state
                  },
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
              ),
            ),
            Column(
              children: [
                Image.asset("assets/images/SearchFriends.png"),
                SizedBox(height: 10),
                const Text(
                  "You will find the results of the search here",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 15,
                    color: Color(0xFFF39C12),
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                // Navigate to the second screen when the button is pressed
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder:
                        (context, animation, secondaryAnimation) =>
                            Discussions(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                side: const BorderSide(
                  color: Color(0xFFF39C12), // Red border
                  width: 2.0, // Border width
                ),
                minimumSize: const Size(100, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Retour',
                style: TextStyle(
                  color: Color(0xFFF39C12),
                  fontFamily: "Raleway",
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
