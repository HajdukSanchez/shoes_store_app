import 'package:flutter/material.dart';

class ShoesSizePreview extends StatelessWidget {
  const ShoesSizePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(40),
      width: double.infinity,
      height: 430,
      decoration:
          BoxDecoration(color: const Color(0xffFFCF53), borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: const [
          _ShoeImage(),
        ],
      ),
    );
  }
}

class _ShoeImage extends StatelessWidget {
  const _ShoeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(image: AssetImage("assets/images/azul.png")),
      ],
    );
  }
}
