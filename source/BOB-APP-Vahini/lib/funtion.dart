import 'package:app/model.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as https;
import 'package:dio/dio.dart';

class VoiceController {
  void speak(String text, AudioPlayer audioPlayer) async {
    final dio = Dio();

    await dio
        .get('https://vaahinivoice.azurewebsites.net/audio/${text}')
        .then((value) async {
      print("########Audio#######");
      await dio
          .get('https://vaahinivoice.azurewebsites.net/move')
          .then((value) {
        print("\n########Move#######");
        final url =
            UrlSource("https://vaahinivoice.azurewebsites.net/Voice.mp3");
        audioPlayer.play(url);
      });
    });
  }

  void stop() async {
    final dio = Dio();
    await dio.get('https://vaahinivoice.azurewebsites.net/delete');
  }

 Future <String> mlRequest(String text)async{
    final dio = Dio();
    final result=await dio.get('https://ml-vahini.herokuapp.com/ml/reply?question=${text}');
    print(result.data);
    // MLReply(reply: result.data.reply);
    String str= result.data['reply'];
    print(str);

return str;
  }
}
