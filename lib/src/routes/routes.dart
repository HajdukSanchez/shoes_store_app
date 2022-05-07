import 'package:flutter/material.dart';

import 'package:shoes_store_app/src/pages/pages.dart';
import 'package:shoes_store_app/src/enums/routes_enum/routes_enum.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  Routes.home.name: (BuildContext context) => const HomePage(),
};
