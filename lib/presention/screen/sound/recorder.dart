import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/screen/sound/audio.dart';

import '../../../app/functions.dart';

class RecorderScreen extends StatefulWidget {
  const RecorderScreen({Key? key}) : super(key: key);
  @override
  State<RecorderScreen> createState() => _RecorderScreenState();
}

class _RecorderScreenState extends State<RecorderScreen> {
  final recorde = FlutterSoundRecorder();
  bool isRecordingReady = false;
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw "Microphone Permission is Granted";
    }
    await recorde.openRecorder();
    isRecordingReady = true;
    recorde.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    recorde.closeRecorder();
    super.dispose();
  }

  Future stope() async {
    if (!isRecordingReady) return;
    final path = await recorde.stopRecorder();
    final audioFile = File(path!);

    print(audioFile.path);
  }

  Future record() async {
    if (!isRecordingReady) return;
    await recorde.startRecorder(toFile: "audio");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(RouteManager.audioplayersBy);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const AudioplayersBy(
                        numberofAyah: "7",
                        edition: "ar.alafasy",
                        bitrate: "64")));
                ;
              },
              icon: const Icon(Icons.kayaking))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<RecordingDisposition>(
                stream: recorde.onProgress,
                builder: (context, snapshot) {
                  final duration = snapshot.hasData
                      ? snapshot.data!.duration
                      : Duration.zero;
                  final twoDigitMinuts =
                      twoDigit(duration.inMinutes.remainder(60));
                  final twoDigitSeconde =
                      twoDigit(duration.inSeconds.remainder(60));
                  return Text(
                    "$twoDigitMinuts:$twoDigitSeconde",
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  );
                }),
            ElevatedButton(
              child: Icon(
                recorde.isRecording ? Icons.stop : Icons.mic,
                size: 80,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () async {
                if (recorde.isRecording) {
                  await stope();
                } else {
                  await record();
                }
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
