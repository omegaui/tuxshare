
import 'package:flutter/material.dart';

class TuxIconButton extends StatelessWidget{
  const TuxIconButton({super.key, required this.icon, required this.onPressed});

  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: IconButton(
          icon: icon,
          onPressed: onPressed,
          splashRadius: 30,
          splashColor: Colors.grey.shade300,
          iconSize: icon.size,
        ),
      ),
    );
  }

}

