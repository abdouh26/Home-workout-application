import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  int _selectedIndex = -1; // -1 means no selection

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 55, right: 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Sex :',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(child: SizedBox()),
          _buildGenderButton(0, Icons.man, 'Male'),
          SizedBox(width: 10),
          _buildGenderButton(1, Icons.woman, 'Female'),
        ],
      ),
    );
  }

  Widget _buildGenderButton(int index, IconData icon, String label) {
    bool isSelected = _selectedIndex == index;

    return OutlinedButton.icon(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      icon: Icon(icon, color: isSelected ? Colors.black : Colors.black),
      label: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.black : Colors.black),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.orange),
        backgroundColor:
            isSelected ? Colors.orange.shade100 : Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
