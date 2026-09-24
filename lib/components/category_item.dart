import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
    this.text,
    this.color,
    this.onTap,
  }) : super(key: key);
  final String? text;
  final Color? color;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
