import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:shoes_store_app/src/enums/enums.dart';
import 'package:shoes_store_app/src/models/models.dart';
import 'package:shoes_store_app/src/routes/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoesModel())], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      routes: routes,
      initialRoute: Routes.home.name,
    );
  }
}
