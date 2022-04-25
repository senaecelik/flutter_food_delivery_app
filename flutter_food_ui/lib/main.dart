import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/router_constant.dart';
import 'route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: RouteConstant.splashScreenRoute,
      onGenerateRoute: RouterGenerator.generateRoute,
      theme: ThemeData(),
    );
  }
}
