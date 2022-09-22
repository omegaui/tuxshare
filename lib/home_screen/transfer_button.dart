import 'package:flutter/material.dart';

class TransferButton extends StatelessWidget {
  const TransferButton({super.key, required this.iconData, required this.onPressed, required this.color, required this.text});

  final String text;
  final IconData iconData;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [color, color.withOpacity(0.85), color], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      iconData,
                      color: Colors.white,
                    ),
                    iconSize: 30,
                    splashColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontFamily: "ComicSansBold",
            color: Colors.grey.shade700,
          ),
        )
      ],
    );
  }
}
