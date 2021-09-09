import 'package:flutter/material.dart';
import 'package:shani/models/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, @required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "₹ ${catalog.price}".text.bold.xl4.red700.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add Cart".text.lg.make())
                .wh(110, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context)
              .py12(),
          Expanded(
              child: VxArc(
            height: 30,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    'Et et tempor kasd no amet dolore dolor sed sed stet. Et eirmod amet est dolore gubergren lorem, diam accusam. Labore vero sanctus dolore amet vero ipsum, sed sit diam lorem gubergren et stet et, est magna nonumy eos tempor, sit ipsum et ipsum vero kasd clita, accusam sit tempor.Diam sit accusam takimata justo dolores tempor sadipscing, et sed gubergren dolor elitr aliquyam sanctus, diam et elitr ipsum voluptua,.'
                        .text
                        .textStyle(context.captionStyle)
                        .center
                        .make()
                        .p16()
                  ],
                ).py20(),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
