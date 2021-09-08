import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_app/models/catalog.dart';
import 'package:flutter_ecommerce_app/widgets/drawer.dart';
import 'package:flutter_ecommerce_app/widgets/item_widget.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, (index) => CatalogModel.products[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text('Shani Catalog App'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: dummyList[index],
                );
              }),
        ));
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString('/files/catalog.json');
    // print(catalogJson);
    var data = jsonDecode(catalogJson);
    // print(data);
    var productsData = data['products'];
    print(productsData);
  }
}
