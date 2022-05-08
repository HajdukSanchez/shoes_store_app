import 'package:flutter/material.dart';

class ButtonSignal extends StatelessWidget {
  final Icon icon;
  final Color color;
  final double size;

  const ButtonSignal({Key? key, required this.icon, this.color = Colors.white, this.size = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: icon,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle, boxShadow: const [
        BoxShadow(
          color: Colors.black45,
          spreadRadius: -5,
          blurRadius: 20,
          offset: Offset(0, 10),
        )
      ]),
    );
  }
}
