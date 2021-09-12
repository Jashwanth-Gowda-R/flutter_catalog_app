import 'package:flutter/material.dart';

import 'package:shani/models/catalog.dart';
import 'package:shani/pages/home_detail_page.dart';
import 'package:shani/widgets/home_widgets/CatalogImage.dart';
import 'package:shani/widgets/home_widgets/add_to_cart.dart';
import 'package:shani/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.products.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.products[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailsPage(
                          catalog: catalog,
                        ))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.accentColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "₹ ${catalog.price}"
                    .text
                    .bold
                    .xl
                    .color(MyTheme.darkBluishColor)
                    .make(),
                AddToCart(catalog: catalog)
              ],
            )
          ],
        ))
      ],
    )).color(context.cardColor).square(150).make().py16();
  }
}
