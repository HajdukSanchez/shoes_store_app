import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/widgets/widgets.dart';

class AddingCartButton extends StatelessWidget {
  final double amount;

  const AddingCartButton({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: const Color(0xFFD4D2D2), borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$$amount",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Button(text: "Add to cart")
          ],
        ));
  }
}
