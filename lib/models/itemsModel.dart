import 'package:audioplayers/audioplayers.dart';

class AppModel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  const AppModel(
      {required this.sound,
      this.image,
      required this.jpName,
      required this.enName});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
