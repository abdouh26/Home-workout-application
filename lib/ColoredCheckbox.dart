import 'package:flutter/material.dart';

class ColoredCheckbox extends StatefulWidget {
  @override
  _ColoredCheckboxState createState() => _ColoredCheckboxState();
}

class _ColoredCheckboxState extends State<ColoredCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
          activeColor: Colors.orange, // Change checkbox color
          checkColor: Colors.white, // Checkmark color
        ),
        Text(
          "I accept the terms and conditions and the privacy policy",
          style: TextStyle(
            fontSize: 10,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
