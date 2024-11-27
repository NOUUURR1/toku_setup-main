import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/itemsModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<AppModel> phrasesList = const [
    AppModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    AppModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe'),
    AppModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka.',
        enName: 'how are you feeling'),
    AppModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa dōbutsu ga daisukidesu',
        enName: 'i love animal'),
    AppModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    AppModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    AppModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name'),
    AppModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    AppModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, ikimasu',
        enName: 'yes im coming'),
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
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhrarsesItem(
                color: const Color(0xff50ADC7), item: phrasesList[index]);
          }),
    );
  }
}
