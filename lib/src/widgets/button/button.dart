import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;

  const Button(
      {Key? key,
      required this.text,
      this.padding = const EdgeInsets.symmetric(horizontal: 40, vertical: 20)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(100)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
