import 'package:flutter/material.dart';
import 'package:quran/presention/compoents/home_componet.dart';
import 'package:quran/presention/resourse/color_manager.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../resourse/image_manager.dart';
import '../../resourse/string_manager.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(ValuseManager.s15),
      child: ListView(
        children: [
          Text(
            AppString.appName,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          const SizedBox(
            height: ValuseManager.s20,
          ),
          const HomeCompent(
              image: ImageManager.quranImageHome,
              title: AppString.quranKeram,
              routeName: RouteManager.quranHome),
          const SizedBox(
            height: ValuseManager.s20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: HomeCompent(
                  image: ImageManager.man,
                  title: AppLocalizations.of(context)!.aladaeih,
                  routeName: RouteManager.aladaeih,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: HomeCompent(
                  image: ImageManager.quranImageHome,
                  title: AppString.alahadyth,
                  routeName: RouteManager.alahadyth,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: ValuseManager.s20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                child: HomeCompent(
                  image: ImageManager.quranImageHome,
                  title: AppString.altafsir,
                  routeName: RouteManager.altafsir,
                ),
              ),
              SizedBox(
                width: ValuseManager.s10,
              ),
              Expanded(
                child: HomeCompent(
                  image: ImageManager.quranImageHome,
                  title: AppString.azkar,
                  routeName: RouteManager.recorder,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
