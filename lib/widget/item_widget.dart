import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final bool isFavourite;
  const ItemWidget({super.key, required this.title, required this.isFavourite});

  @override
  Widget build(BuildContext context) {
    return   Row(
        children: [
          Text(title),
          Spacer(),
          isFavourite? Icon(Icons.favorite):Icon(Icons.favorite_border),
        ],);
  }
}
