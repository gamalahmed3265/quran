import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran/app/constans.dart';
import 'package:quran/presention/resourse/image_manager.dart';

import '../../../app/functions.dart';

class AudioplayersBy extends StatefulWidget {
  final String numberofAyah;
  final String edition;
  final String bitrate;
  const AudioplayersBy(
      {Key? key,
      required this.numberofAyah,
      required this.edition,
      required this.bitrate})
      : super(key: key);

  @override
  State<AudioplayersBy> createState() => _AudioplayersByState();
}

class _AudioplayersByState extends State<AudioplayersBy> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration postion = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDurtion) {
      setState(() {
        duration = newDurtion;
      });
    });
    audioPlayer.onPositionChanged.listen((newpostion) {
      setState(() {
        postion = newpostion;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    String url =
        "${AppConstans.baseUrlAudio}/${widget.bitrate}/${widget.edition}/${widget.numberofAyah}.mp3";
    await audioPlayer.play(UrlSource(url));
    // final file=File(...);
    // audioPlayer.setSourceUrl(file.path,loval);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                ImageManager.man,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "data",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "data",
              style: TextStyle(fontSize: 20),
            ),
            Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: postion.inSeconds.toDouble(),
                onChanged: ((value) async {
                  final position = Duration(seconds: value.toInt());
                  await audioPlayer.seek(position);

                  await audioPlayer.resume();
                })),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "${twoDigit((postion).inMinutes.remainder(60))}:${twoDigit((postion).inSeconds.remainder(60))}"),
                  Text(
                      "${twoDigit((duration - postion).inMinutes.remainder(60))}:${twoDigit((duration - postion).inSeconds.remainder(60))}"),
                  // Text(postion.toString()),
                  // Text((duration - postion).toString()),
                ],
              ),
            ),
            CircleAvatar(
              radius: 25,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.stop : Icons.play_arrow,
                ),
                iconSize: 50,
                onPressed: () async {
                  if (isPlaying) {
                    await audioPlayer.pause();
                  } else {
                    // String url =
                    //     "https://cdn.islamic.network/quran/audio/64/ar.alafasy/262.mp3";
                    // await audioPlayer.play(UrlSource(url));
                    await audioPlayer.resume();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
