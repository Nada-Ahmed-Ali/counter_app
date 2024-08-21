import 'package:flutter/material.dart';

class CoustomIconButton extends StatelessWidget {
  const CoustomIconButton({super.key, required this.icon, required this.onPressed});
final IconData icon;
final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed,
        iconSize: 100,
        icon: Icon(
      icon,
      color: Colors.brown,
      shadows: const [Shadow(blurRadius: 10)],

    ));
  }
}
