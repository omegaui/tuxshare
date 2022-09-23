import 'package:flutter/material.dart';

class TransferButton extends StatelessWidget {
  const TransferButton({super.key, required this.iconData, required this.onPressed, required this.color, required this.text, required this.enabled});

  final String text;
  final IconData iconData;
  final VoidCallback onPressed;
  final Color color;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    Color color = this.color;
    if(!enabled){
      color = Colors.blueGrey.withOpacity(0.5);
    }
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [color, color.withOpacity(0.85), color], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: enabled ? onPressed : () {},
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
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontFamily: "ComicSansBold",
            color: Colors.grey.shade800,
          ),
        )
      ],
    );
  }
}
