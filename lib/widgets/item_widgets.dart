import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try1/models/catalogs.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({key , required this.item}) :assert(item!= null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        onTap: (){
          print("object");
        },
      leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
