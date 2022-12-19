import 'package:quran/presention/resourse/image_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';

class Language {
  final int id;
  final String flag;
  final String name;
  final String language;
  Language(this.id, this.flag, this.name, this.language);

  static List<Language> allLanguage = <Language>[
    Language(0, ImageManager.egyptFlag, AppString.arbic, AppString.arbiCode),
    Language(
        1, ImageManager.unitedFlag, AppString.english, AppString.englishCode),
  ];
}
