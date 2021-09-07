import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/home_page.dart';
import 'package:flutter_ecommerce_app/pages/login.dart';
import 'package:flutter_ecommerce_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme,
          )),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // home: Home(),
      initialRoute: '/',
      routes: {
        "/": (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
      },
    );
  }
}
