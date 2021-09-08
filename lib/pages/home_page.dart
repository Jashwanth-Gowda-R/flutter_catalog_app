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
        appBar: AppBar(
          title: Text('Shani Catalog App'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.products != null &&
                  CatalogModel.products.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16),
                  itemCount: CatalogModel.products.length,
                  itemBuilder: (context, index) {
                    final item = CatalogModel.products[index];
                    return Card(
                        child: GridTile(
                          child: Image.network(item.image),
                          header: Container(
                              child: Text(
                                item.name,
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(12),
                              decoration:
                                  BoxDecoration(color: Colors.deepPurple)),
                          footer: Text(item.price.toString()),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        clipBehavior: Clip.antiAlias);
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ));
  }
}
