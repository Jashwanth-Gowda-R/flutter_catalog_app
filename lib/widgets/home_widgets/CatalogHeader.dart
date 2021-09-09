import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Shani Catalog App".text.xl3.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}
