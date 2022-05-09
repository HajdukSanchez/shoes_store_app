import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';

import 'package:shoes_store_app/src/enums/enums.dart';
import 'package:shoes_store_app/src/helpers/helpers.dart';
import 'package:shoes_store_app/src/widgets/widgets.dart';

class ShoesDescriptionPage extends StatelessWidget {
  const ShoesDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusBarToLight();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: HerosEnum.shoes.name,
                child: const ShoesSizePreview(
                  isFullScreen: true,
                ),
              ),
              Positioned(
                  top: 40,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child: const Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                      size: 60,
                    ),
                    onPressed: () => _onTapReturn(context),
                  ))
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                FadeInLeft(
                  delay: const Duration(milliseconds: 200),
                  duration: const Duration(milliseconds: 500),
                  child: const ShoesDescription(
                      title: 'Nike Air Max 720',
                      description:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 200),
                  duration: const Duration(milliseconds: 500),
                  child: CustomButtomBox(
                    amount: 180,
                    button: const Button(
                      text: "Buy now",
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    ),
                    backgroundColor: ThemeData.light().scaffoldBackgroundColor,
                    padding: const EdgeInsets.all(0),
                  ),
                ),
                const ShoesSkuSelector(),
                const _SignalButtons()
              ],
            ),
          ))
        ],
      ),
    );
  }

  void _onTapReturn(BuildContext context) {
    changeStatusBarToDark();
    Navigator.pop(context);
  }
}

class _SignalButtons extends StatelessWidget {
  const _SignalButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonSignal(
            icon: Icon(
              Icons.star_rounded,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
          ButtonSignal(
            icon: Icon(
              Icons.add_shopping_cart_rounded,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
          ButtonSignal(
            icon: Icon(
              Icons.settings_rounded,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
