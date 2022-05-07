import 'package:flutter/material.dart';

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
    return Container(
      width: 45,
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: size == 9.0 ? const Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (size == 9.0)
              const BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))
          ]),
      child: Text(size.toString().replaceAll('.0', ''),
          style: TextStyle(
              color: size == 9 ? Colors.white : const Color(0xffF1A23A),
              fontSize: 16,
              fontWeight: FontWeight.bold)),
    );
  }
}
