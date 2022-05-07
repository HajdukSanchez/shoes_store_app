import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomAppBar(
      title: "For you",
    ));
  }
}
