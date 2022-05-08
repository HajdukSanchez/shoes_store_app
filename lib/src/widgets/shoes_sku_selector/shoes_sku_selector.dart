import 'package:flutter/material.dart';

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
          Stack(
            children: const [
              _SkuButton(
                color: Color(0xffC6D642),
                left: 90,
              ),
              _SkuButton(
                color: Color(0xffFFAD29),
                left: 60,
              ),
              _SkuButton(
                color: Color(0xff2099F1),
                left: 30,
              ),
              _SkuButton(
                color: Color(0xff364D56),
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
  final double left;

  const _SkuButton({Key? key, required this.color, this.left = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(left, 0),
      child: Container(
          width: 45, height: 45, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
