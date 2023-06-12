import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  outlined,
  black,
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final ButtonType type;
  final VoidCallback onPressed;

  const ButtonWidget(
      {super.key,
      required this.text,
      required this.type,
      required this.onPressed,
      required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    Color? buttonColor;
    Color? textColor;
    ButtonStyle? buttonStyle;

    switch (type) {
      case ButtonType.primary:
        buttonColor = Colors.blue;
        textColor = Colors.white;
        buttonStyle = ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        );
        break;
      case ButtonType.outlined:
        buttonColor = Colors.transparent;
        textColor = Colors.blue;
        buttonStyle = OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.blue),
        );
        break;
      case ButtonType.black:
        buttonColor = Colors.black;
        textColor = Colors.white;
        buttonStyle = ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
        break;
    }

    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
