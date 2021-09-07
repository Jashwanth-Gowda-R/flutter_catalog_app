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
        // backgroundColor: Colors.amberAccent[100],
        elevation: 0,
      ),
      body: Container(
        child:
            Center(child: Text('welcome to shani world in $days by $name!!')),
      ),
      drawer: MyDrawer(),
    );
  }
}
