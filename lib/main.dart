import 'package:flutter/material.dart';
import 'package:shani/core/store.dart';
import 'package:shani/pages/cart.dart';
import 'package:shani/pages/home_page.dart';
import 'package:shani/pages/login.dart';
import 'package:shani/utils/routes.dart';
import 'package:shani/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // home: Home(),
      initialRoute: '/',
      routes: {
        "/": (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.cartRoute: (context) => Cart(),
      },
    );
  }
}
