import 'package:flutter/material.dart';

class CustomButtomBox extends StatelessWidget {
  final double amount;
  final Widget button;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;

  const CustomButtomBox(
      {Key? key,
      required this.amount,
      required this.button,
      this.backgroundColor = const Color(0xFFD4D2D2),
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 20)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
        padding: padding,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$$amount",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            button
          ],
        ));
  }
}
