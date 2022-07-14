import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lean_scale_case/models/restaurant_food_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:provider/provider.dart';

import 'core/init/provider/provider_list.dart';
import 'core/init/provider/theme_notifier.dart';
import 'core/navigation/router.gr.dart';
import 'models/food_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Directory directory = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('fav_box');
  await Hive.openBox('fav_box2');
  Hive.registerAdapter(FoodModelAdapter());
  Hive.registerAdapter(RestaurantFoodsAdapter());
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance!.dependItems],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'LeanScale',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
    );
  }
}
