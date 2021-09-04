import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String name = 'jashwanth';

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Shani Catalog App'),
            backgroundColor: Colors.amberAccent[100],
            elevation: 0,
          ),
          body: Container(
            child: Center(
                child: Text('welcome to shani world in $days by $name!!')),
          ),
        ));
  }
}
