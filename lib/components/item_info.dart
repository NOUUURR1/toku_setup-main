import 'package:flutter/material.dart';
import 'package:toku/models/itemsModel.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.item}) : super(key: key);
  final AppModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                item.enName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20),
        ),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 18,
          ),
        ),
      ],
    );
  }
}
