import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color overlayColor;
  final Color shadowColor;
  final Color borderColor;
  final double borderWidth;
  final double fontSize;

  const ButtonRounded({
    super.key,
    this.title = 'Click Me',
    this.icon = const Icon(Icons.save, size: 28, color: Colors.white),
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.overlayColor = Colors.lightBlue,
    this.shadowColor = Colors.grey,
    this.borderColor = Colors.white,
    this.borderWidth = 0,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
          foregroundColor: WidgetStateProperty.all<Color>(foregroundColor),
          overlayColor: WidgetStateProperty.all<Color>(overlayColor),
          shadowColor: WidgetStateProperty.all<Color>(shadowColor),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}