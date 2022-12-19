import 'package:flutter/material.dart';
import 'package:quran/presention/screen/home/aladaeih_scrren.dart';
import 'package:quran/presention/screen/home/alahadyth_scrren.dart';
import 'package:quran/presention/screen/home/alsawtiaat_scrren.dart';
import 'package:quran/presention/screen/home/altafsir_scrren.dart';
import 'package:quran/presention/screen/home/azkar_scrren.dart';
import 'package:quran/presention/screen/home/quran/quran_details.dart';
import 'package:quran/presention/screen/home/quran_scrren.dart';
import 'package:quran/presention/screen/home_scrren.dart';
import 'package:quran/presention/screen/intro/onbording_scrren.dart';
import 'package:quran/presention/screen/intro/splash_screen.dart';
import 'package:quran/presention/screen/settings/alquraa_scrren.dart';
import 'package:quran/presention/screen/settings/settings_screen.dart';
import 'package:quran/presention/screen/sound/audio.dart';
import 'package:quran/presention/screen/sound/recorder.dart';
import 'package:quran/presention/screen/task/task_page.dart';

import '../../app/di.dart';

class RouteManager {
  static const String splsh = "/";
  static const String onBording = "/OnBording";
  static const String home = "/home";
  static const String quranHome = "/quran";
  static const String aladaeih = "/aladaeih";
  static const String alahadyth = "/alahadyth";
  static const String alsawtiaat = "/alsawtiaat";
  static const String altafsir = "/altafsir";
  static const String azkar = "/azkar";
  static const String quranDetial = "/quranDetials";
  static const String settingsScreen = "/settingsScreen";
  static const String alquraaScreen = "/alquraaScreen";
  static const String recorder = "/recorder";
  // static const String taskPage = "/taskPage";
  // static const String audioplayersBy = "/audioplayersBy";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteManager.splsh:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // return MaterialPageRoute(builder: (_) => const QuranScreen());
      case RouteManager.onBording:
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());
      case RouteManager.home:
        // initGetByJuz();
        return MaterialPageRoute(builder: (_) => const HomeScrren());
      case RouteManager.quranHome:
        // initGetByJuz();
        return MaterialPageRoute(builder: (_) => const QuranScreen());
      case RouteManager.aladaeih:
        return MaterialPageRoute(builder: (_) => const AladaeihScreen());
      case RouteManager.alahadyth:
        return MaterialPageRoute(builder: (_) => const AlahadythScrren());
      case RouteManager.alsawtiaat:
        return MaterialPageRoute(builder: (_) => const AlsawtiaatScreen());
      case RouteManager.altafsir:
        return MaterialPageRoute(builder: (_) => const AltafsirScreen());
      case RouteManager.azkar:
        return MaterialPageRoute(builder: (_) => const AzkarScreen());
      case RouteManager.quranDetial:
        return MaterialPageRoute(builder: (_) => const QuranDetials());
      case RouteManager.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case RouteManager.alquraaScreen:
        return MaterialPageRoute(builder: (_) => const AlquraaScreen());
      case RouteManager.recorder:
        return MaterialPageRoute(builder: (_) => const RecorderScreen());
      // case RouteManager.taskPage:
      //   return MaterialPageRoute(builder: (_) => const TaskPage());
      // case RouteManager.audioplayersBy:
      //   return MaterialPageRoute(builder: (_) => const AudioplayersBy());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("Not Found"),
              ),
              body: const Center(child: Text("Not Found")),
            ));
  }
}
