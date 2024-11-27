import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/itemsModel.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);
  final List<AppModel> numbers = const [
    AppModel(
        sound: 'sounds/family_members/grand father.wav3',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        enName: 'grandfather'),
    AppModel(
        sound: 'sounds/family_members/grand mother.wav3',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grandMother'),
    AppModel(
        sound: 'sounds/family_members/father.wav3',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    AppModel(
        sound: 'sounds/family_members/mother.wav3',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    AppModel(
        sound: 'sounds/family_members/daughter.wav3',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    AppModel(
        sound: 'sounds/family_members/older brother.wav3',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'older Brother'),
    AppModel(
        sound: 'sounds/family_members/older sister.wav3',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older Sister'),
    AppModel(
        sound: 'sounds/family_members/son.wav3',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    AppModel(
        sound: 'sounds/family_members/younger brother.wav3',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger Brother'),
    AppModel(
        sound: 'sounds/family_members/younger sister.wav3',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger Sister'),
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
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(color: const Color(0xff558B37), item: numbers[index]);
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
