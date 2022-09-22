
import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "tux",
        style: TextStyle(
          color: Colors.blue,
          fontFamily: "NexaBold",
          fontSize: size,
        ),
        children: [
          TextSpan(
            text: "share",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontFamily: "NexaBold",
              fontSize: size + 5,
            ),
          ),
        ],
      )
    );
  }
}
