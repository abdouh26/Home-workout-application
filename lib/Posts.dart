import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/firstpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/secondpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/thirdpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/fourthpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/fifthpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/sixthpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/seventhpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/eighthpost.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/ninethpost.jpg',
                    fit: BoxFit.cover,
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
