import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
                floating: true,
                delegate: CustomAppBarDelegate(
                  child: const CustomAppBar(title: "For you"),
                  maxHeight: 130,
                  minHeight: 120,
                )),
            SliverList(
              delegate: SliverChildListDelegate(const [
                ShoesSizePreview(),
                ShoesDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                SizedBox(height: 100),
              ]),
            )
          ],
        ),
        const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomButtomBox(
              amount: 1280,
              button: Button(text: "Add to cart"),
            ))
      ],
    ));
  }
}
