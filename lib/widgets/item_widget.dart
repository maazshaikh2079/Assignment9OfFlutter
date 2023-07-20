// ignore_for_file: prefer_const_constructors
import 'package:instaeco/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      //shape: CircleBorder(),
      child: GridTile(
        header: Container(
          color: Colors.black,
          child: Center(
            child: Text(
              item.name,
              style: TextStyle(
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
        key: Key(item.name),
        footer: Container(
          color: Color.fromARGB(255, 22, 255, 216),
          child: Text(
            "\$${item.price}",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        child: Image.network(item.image),
      ),
    );
  }
}
