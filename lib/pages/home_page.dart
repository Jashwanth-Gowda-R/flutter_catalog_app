import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_app/models/catalog.dart';
import 'package:flutter_ecommerce_app/widgets/home_widgets/CatalogHeader.dart';
import 'package:flutter_ecommerce_app/widgets/home_widgets/CatalogList.dart';
import 'package:flutter_ecommerce_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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

  loadData() async {
    var catalogJson = await rootBundle.loadString('/files/catalog.json');
    // print(catalogJson);
    var data = jsonDecode(catalogJson);
    // print(data);
    var productsData = data['products'];
    // print(productsData);
    CatalogModel.products =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(30, (index) => CatalogModel.products[0]);
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.products != null &&
                    CatalogModel.products.isNotEmpty)
                  CatalogList().py12().expand()
                else
                  CircularProgressIndicator().centered().py16().expand()
              ],
            ),
          ),
        ));
  }
}
