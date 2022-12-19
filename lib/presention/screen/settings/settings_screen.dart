import 'package:flutter/material.dart';
import 'package:quran/app/app_prefs.dart';
import 'package:quran/app/language.dart';
import 'package:quran/presention/resourse/image_manager.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';
import 'package:quran/presention/resourse/theme_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

import '../../../app/app.dart';
import '../../../domain/enities/language.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        // height: size.height,
        child: ListView(
          children: [
            ListTile(
              title: Text(
                translation(context).language,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: PopupMenuButton<Language>(
                  // Callback that sets the selected popup menu item.
                  onSelected: (Language item) async {
                    setState(() {
                      // _selectedMenu = item.name;
                      MyApp.setLocale(context, Locale(item.language, ""));

                      print(item.name);
                    });
                    if (Changelanguage.isRtl == true &&
                        item.language == Changelanguage.english) {
                      setState(() {
                        Changelanguage.isRtl = false;
                      });
                    } else if (Changelanguage.isRtl == false &&
                        item.language == Changelanguage.arbic) {
                      setState(() {
                        Changelanguage.isRtl = true;
                      });
                    }
                    print(Changelanguage.isRtl);
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<Language>>[
                        PopupMenuItem<Language>(
                          value: Language.allLanguage[0],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(translation(context).arbic),
                              Image.asset(ImageManager.egyptFlag),
                            ],
                          ),
                        ),
                        PopupMenuItem<Language>(
                          value: Language.allLanguage[1],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(translation(context).english),
                              Image.asset(ImageManager.unitedFlag),
                            ],
                          ),
                        ),
                      ]),
            ),
            ListTile(
              title: const Text(AppString.alquraa),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.alquraaScreen);
              },
            ),
            ListTile(
              title: const Text(AppString.changeTheme),
              leading: const Icon(Icons.nightlight_round),
              onTap: () {
                if (isLight == true) {
                  setState(() {
                    isLight = false;
                  });
                } else if (isLight == false) {
                  setState(() {
                    isLight = true;
                  });
                }
                print(isLight);
              },
            )
          ],
        ),
      ),
    );
  }
}
