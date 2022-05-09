import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_store_app/src/models/models.dart';
import 'package:shoes_store_app/src/widgets/widgets.dart';

class ShoesSkuSelector extends StatelessWidget {
  const ShoesSkuSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              _SkuButton(
                color: Color(0xff364D56),
                assetImage: "assets/images/negro.png",
              ),
              _SkuButton(
                color: Color(0xff2099F1),
                assetImage: "assets/images/azul.png",
              ),
              _SkuButton(
                color: Color(0xffFFAD29),
                assetImage: "assets/images/amarillo.png",
              ),
              _SkuButton(
                color: Color(0xffC6D642),
                assetImage: "assets/images/verde.png",
              ),
            ],
          ),
          const Button(
            text: "More releated items",
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Color(0xffFFC675),
          ),
        ],
      ),
    );
  }
}

class _SkuButton extends StatelessWidget {
  final Color color;
  final String assetImage;

  const _SkuButton({Key? key, required this.color, required this.assetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoesModelProvider = Provider.of<ShoesModel>(context, listen: false);

    return GestureDetector(
      onTap: () => _onButtonTap(shoesModelProvider),
      child: Container(
          width: 45, height: 45, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }

  void _onButtonTap(ShoesModel shoesModel) {
    shoesModel.assetImage = assetImage; // assign the new asset image
  }
}
