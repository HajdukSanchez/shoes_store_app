import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/widgets/widgets.dart';

class ShoesDescriptionPage extends StatelessWidget {
  const ShoesDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ShoesSizePreview(
            isFullScreen: true,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const ShoesDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                CustomButtomBox(
                  amount: 180,
                  button: const Button(
                    text: "Buy now",
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  ),
                  backgroundColor: ThemeData.light().scaffoldBackgroundColor,
                  padding: const EdgeInsets.all(0),
                ),
                const ShoesSkuSelector()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
