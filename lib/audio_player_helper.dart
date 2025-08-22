import 'package:audioplayers/audioplayers.dart';

class AudioPlayerHelper {
  static final _player = AudioPlayer();

  static void playAudio(String audioPath) {
    _player.play(AssetSource(audioPath));
  }
}
