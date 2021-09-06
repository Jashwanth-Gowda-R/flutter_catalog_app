import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/home_page.dart';
import 'package:flutter_ecommerce_app/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // home: Home(),
      routes: {
        "/": (context) => Home(),
        '/login': (context) => Login(),
      },
    );
  }
}
