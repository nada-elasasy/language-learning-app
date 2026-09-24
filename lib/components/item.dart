import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item, required this.color})
      : super(key: key);
  final ItemModel item;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 251, 221, 191),
              child: Image.asset(item.image!)),
          Expanded(child: Iteminfo(item: item)),
        ],
      ),
    );
  }
}
