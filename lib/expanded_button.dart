import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {

  ExpandedButton({ required this.text, required this.color, required this.textColor, required this.onPressed});

  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Material(
              elevation: 2.0,
              color: color,
              borderRadius: BorderRadius.circular(10.0),
              child: MaterialButton(
                height: 45.0,
                child: Text(text, style: TextStyle(color: textColor,fontSize: 16.0),),
                onPressed: onPressed,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
