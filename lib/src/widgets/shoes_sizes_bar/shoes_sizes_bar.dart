import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_store_app/src/models/models.dart';

class ShoesSizesBar extends StatelessWidget {
  const ShoesSizesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _ShoesSizeBox(
            size: 7,
          ),
          _ShoesSizeBox(
            size: 7.5,
          ),
          _ShoesSizeBox(
            size: 8,
          ),
          _ShoesSizeBox(
            size: 8.5,
          ),
          _ShoesSizeBox(
            size: 9,
          ),
          _ShoesSizeBox(
            size: 9.5,
          ),
        ],
      ),
    );
  }
}

class _ShoesSizeBox extends StatelessWidget {
  final double size;
  const _ShoesSizeBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoesModelProvider = Provider.of<ShoesModel>(context);

    return GestureDetector(
      onTap: () => onTapBox(shoesModelProvider),
      child: Container(
        width: 45,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: size == shoesModelProvider.shoesSize ? const Color(0xffF1A23A) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (size == shoesModelProvider.shoesSize)
                const BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))
            ]),
        child: Text(size.toString().replaceAll('.0', ''),
            style: TextStyle(
                color:
                    size == shoesModelProvider.shoesSize ? Colors.white : const Color(0xffF1A23A),
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  void onTapBox(ShoesModel shoesModelProvider) {
    shoesModelProvider.shoesSize = size;
  }
}
