import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function onPressed;

  CustomRadioButton({required this.text, required this.isSelected, required this.onPressed});

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.isSelected ? Colors.blue : Colors.grey,
        ),
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
