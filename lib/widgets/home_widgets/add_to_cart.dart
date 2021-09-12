import 'package:flutter/material.dart';
import 'package:shani/core/store.dart';
import 'package:shani/models/cart.dart';
import 'package:shani/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  // final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    // VxState.listen(context, to: []);
    VxState.watch(context, on: [AddMutation]);
    // VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;

    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            // isInCart = isInCart.toggle();
            // final _catalog = CatalogModel();
            // _cart.catalog = _catalog;
            // _cart.add(catalog);
            AddMutation(catalog);

            // setState(() {

            //   }
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.accentColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isInCart
            ? Icon(Icons.done)
            : Icon(Icons.add_shopping_cart_outlined));
  }
}
