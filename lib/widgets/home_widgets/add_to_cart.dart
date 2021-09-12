import 'package:flutter/material.dart';
import 'package:shani/models/cart.dart';
import 'package:shani/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
        onPressed: () {
          setState(() {
            if (!isInCart) {
              isInCart = isInCart.toggle();
              final _catalog = CatalogModel();

              _cart.catalog = _catalog;
              _cart.add(widget.catalog);
              setState(() {});
            }
          });
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.accentColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: isInCart
            ? Icon(Icons.done)
            : Icon(Icons.add_shopping_cart_outlined));
  }
}
