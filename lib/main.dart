import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/routes/routes.dart';
import 'package:shoes_store_app/src/enums/routes_enum/routes_enum.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      routes: routes,
      initialRoute: Routes.shoesDescription.name,
    );
  }
}
