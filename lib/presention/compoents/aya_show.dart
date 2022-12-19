import 'package:flutter/material.dart';
import 'package:quran/app/language.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';

import 'package:quran/presention/resourse/color_manager.dart';
import 'package:quran/presention/resourse/image_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

import '../../app/functions.dart';

class ShowAyah extends StatelessWidget {
  SurahEnities surahEnities;
  ShowAyah({Key? key, required this.surahEnities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: ListView(
          children: [
            header(surahEnities, context),
            Text(
              surahEnities.ayahs[0].text,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(ValuseManager.s10),
              child: RichText(
                textAlign: surahEnities.ayahs.length <= ValuseManager.s20
                    ? TextAlign.center
                    : TextAlign.justify,
                text: TextSpan(
                  children: [
                    for (int i = 1; i < surahEnities.ayahs.length; i++) ...{
                      TextSpan(
                        text: surahEnities.ayahs[i].text,
                        style: const TextStyle(
                          // fontFamily: 'Kitab',
                          fontSize: 25,
                          color: Colors.black87,
                        ),
                      ),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Container(
                            margin: const EdgeInsets.all(ValuseManager.s10),
                            child: CircleAvatar(
                              backgroundColor: ColorManager.green,
                              backgroundImage:
                                  const AssetImage(ImageManager.img1),
                              radius: ValuseManager.s15,
                              child: Text(
                                Changelanguage.isRtl
                                    ? replaceFarsiNumber(surahEnities
                                        .ayahs[i].numberInSurah
                                        .toString())
                                    : surahEnities.ayahs[i].numberInSurah
                                        .toString(),
                                textAlign: TextAlign.center,
                                textScaleFactor:
                                    i.toString().length <= 2 ? 1 : .8,
                              ),
                            ),
                          ))
                    }
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget header(SurahEnities surah, BuildContext context) {
    return Container(
        width: double.infinity,
        color: ColorManager.amber,
        padding: const EdgeInsets.all(ValuseManager.s10),
        height: ValuseManager.s100,
        child: ListTile(
            title: Text(Changelanguage.isRtl ? surah.name : surah.englishName),
            trailing: surah.revelationType == AppString.meccan
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ClipRect(
                          child: Image.asset(ImageManager.kaaba),
                        ),
                      ),
                      const Expanded(child: Text(AppString.meccanar))
                    ],
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: ClipRect(
                          child: Image.asset(ImageManager.moon),
                        ),
                      ),
                      const Expanded(child: Text(AppString.madina))
                    ],
                  ),
            subtitle: Text("${AppString.numberofAyah} ${surah.ayahs.length}")));
  }
}
