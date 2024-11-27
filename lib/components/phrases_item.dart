import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/itemsModel.dart';

class PhrarsesItem extends StatelessWidget {
  const PhrarsesItem({Key? key, required this.item, required this.color})
      : super(key: key);
  final AppModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
