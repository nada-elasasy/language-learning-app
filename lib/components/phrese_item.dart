import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/number.dart';

class phasesitem extends StatelessWidget {
  const phasesitem({Key? key, required this.item, required this.color})
      : super(key: key);
  final Color color;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff50ADC7),
      child: Iteminfo(item: item),
    );
  }
}
