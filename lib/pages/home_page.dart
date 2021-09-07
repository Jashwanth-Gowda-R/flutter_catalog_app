import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 1;
    String name = 'jashwanth';

    return Scaffold(
      appBar: AppBar(
        title: Text('Shani Catalog App'),
      ),
      // appBar: AppBar(
      //   title: Text(
      //     'Shani Catalog App',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   // backgroundColor: Colors.amberAccent[100],
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      drawer: MyDrawer(),
      body: Container(
        child:
            Center(child: Text('welcome to shani world in $days by $name!!')),
      ),
    );
  }
}
