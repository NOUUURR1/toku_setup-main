import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/itemsModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<AppModel> numbers = const [
    AppModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'ichi',
        enName: 'black'),
    AppModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Ni',
        enName: 'brown'),
    AppModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'San',
        enName: 'dusty yellow'),
    AppModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Shi',
        enName: 'gray'),
    AppModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Go',
        enName: 'green'),
    AppModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Roku',
        enName: 'red'),
    AppModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Seburn',
        enName: 'white'),
    AppModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'hachi',
        enName: 'yellow'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 17.0,
        ),
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(color: const Color(0xff79359F), item: numbers[index]);
          }),
    );
  }

/*   List<Widget> getList(List<Number> numbers) {
    List<Item> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(Item(number: numbers[i]));
    }
    return itemsList;
  } */
}
