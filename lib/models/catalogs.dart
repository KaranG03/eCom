
class CatalogModel{
  static List<Item>items =[];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {

    return Item(
      map['id'], map['name'], map['desc'],
      map['price'],
      map['color'],
      map['image'],
    );
  }


}

