import 'package:hello_deutsch/audio_player_helper.dart';

class ItemModel {
  final String image;
  final String engText;
  final String germText;
  final String sound;

  ItemModel({
    required this.image,
    required this.engText,
    required this.germText,
    required this.sound,
  });

  void playSound() {
    AudioPlayerHelper.playAudio(sound);
  }
}
