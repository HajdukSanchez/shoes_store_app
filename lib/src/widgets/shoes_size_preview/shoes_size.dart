import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/widgets/widgets.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool isFullScreen;

  const ShoesSizePreview({Key? key, this.isFullScreen = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFullScreen
          ? const EdgeInsets.only(
              bottom: 5,
            )
          : const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      height: isFullScreen ? 400 : 430,
      decoration: BoxDecoration(
          color: const Color(0xffFFCF53),
          borderRadius: isFullScreen
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
              : BorderRadius.circular(50)),
      child: Column(
        children: [
          const _ShoeImage(),
          if (!isFullScreen) const ShoesSizesBar(),
        ],
      ),
    );
  }
}

class _ShoeImage extends StatelessWidget {
  const _ShoeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Stack(
        children: const [
          Positioned(bottom: 20, right: 0, child: _ShoeShadow()),
          Image(image: AssetImage("assets/images/azul.png")),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  const _ShoeShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
