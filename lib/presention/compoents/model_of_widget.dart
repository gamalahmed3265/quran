import 'package:flutter/material.dart';

import 'package:quran/app/app_prefs.dart';
import 'package:quran/presention/resourse/image_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';
import 'package:quran/presention/screen/main/aljadwal_sceen.dart';
import 'package:quran/presention/screen/main/atijah_alqablih_scrren.dart';
import 'package:quran/presention/screen/main/favorite_scrren.dart';
import 'package:quran/presention/screen/main/main_screem.dart';
import 'package:quran/presention/screen/main/mawaqit%20_alsalah_scrren.dart';

import '../resourse/string_manager.dart';

//bottom sheet
class BottomNavigationObject {
  static List<BottomNavigationBarItem> bottomNavigationBarItem(
          BuildContext context) =>
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: const Icon(Icons.home), label: translation(context).main),
        BottomNavigationBarItem(
            icon: const Icon(Icons.date_range),
            label: translation(context).mawaqitAlsalah),
        BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark_outline_outlined),
            label: translation(context).favorit),
        BottomNavigationBarItem(
            icon: const Icon(Icons.schedule),
            label: translation(context).aljadwal),
        BottomNavigationBarItem(
            icon: const Icon(Icons.compass_calibration),
            label: translation(context).aijahAlqablih),
      ];
}

class ListOfScreen {
  Widget screen;
  ListOfScreen({required this.screen});
}

class BottomModel {
  static final main = ListOfScreen(screen: const MainScreen());

  static final mawaqitAlsalah =
      ListOfScreen(screen: const MawaqitAlsalahScreen());

  static final favorit = ListOfScreen(screen: const FavoriteScreen());
  static final aljadwal = ListOfScreen(screen: AljadwalScreen());
  static final aijahAlqablih =
      ListOfScreen(screen: const AtijahAlqablihScreen());

  static final screenBottomNavigationBarItem = <Widget>[
    main.screen,
    mawaqitAlsalah.screen,
    favorit.screen,
    aljadwal.screen,
    aijahAlqablih.screen
  ];
}

// onbording
class OnBordingObject {
  final String title;
  final String image;
  final String descriotion;
  OnBordingObject(
      {required this.title, required this.image, required this.descriotion});
}

class OnBordingModel {
  static final onBording1 = OnBordingObject(
      title: AppString.onBordingTitle1,
      image: ImageManager.onbording1,
      descriotion: AppString.onBordingDescriotion1);
  static final onBording2 = OnBordingObject(
      image: ImageManager.onbording2,
      title: AppString.onBordingTitle2,
      descriotion: AppString.onBordingDescriotion2);
  static final onBording3 = OnBordingObject(
      image: ImageManager.onbording3,
      title: AppString.onBordingTitle3,
      descriotion: AppString.onBordingDescriotion3);
  static final onBording4 = OnBordingObject(
      image: ImageManager.onbording4,
      title: AppString.onBordingTitle4,
      descriotion: AppString.onBordingDescriotion4);

  static final listOnBording = <OnBordingObject>[
    onBording1,
    onBording2,
    onBording3,
    onBording4
  ];
}
