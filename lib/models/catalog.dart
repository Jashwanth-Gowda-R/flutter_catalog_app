class CatalogModel {
  static final products = [
    Item(
        id: 1,
        name: 'iPhone 12 Pro',
        desc: 'apple iPhone 12Th gen',
        price: 9999,
        color: '#33505a',
        image: '')
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
