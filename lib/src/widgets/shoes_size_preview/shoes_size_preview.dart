import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_store_app/src/enums/enums.dart';
import 'package:shoes_store_app/src/models/models.dart';
import 'package:shoes_store_app/src/widgets/widgets.dart';

class ShoesSizePreview extends StatelessWidget {
  final bool isFullScreen;

  const ShoesSizePreview({Key? key, this.isFullScreen = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapShoesPreview(context),
      child: Container(
        margin: isFullScreen
            ? const EdgeInsets.all(0)
            : const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        height: 430,
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
      ),
    );
  }

  void onTapShoesPreview(BuildContext context) {
    if (!isFullScreen) {
      Navigator.pushNamed(context, Routes.shoesDescription.name);
    }
  }
}

class _ShoeImage extends StatelessWidget {
  const _ShoeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoesModelProvider = Provider.of<ShoesModel>(context);

    return Container(
      padding: const EdgeInsets.all(40),
      child: Stack(
        children: [
          const Positioned(bottom: 20, right: 0, child: _ShoeShadow()),
          Image(image: AssetImage(shoesModelProvider.assetImage)),
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
