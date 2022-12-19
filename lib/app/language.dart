import 'package:flutter/material.dart';

enum LanguageEnum { english, arbic }

class Changelanguage {
  static const String arbic = "ar";
  static const String english = "en";
  static const Locale arbicLocale = Locale("ar", "SA");
  static const Locale englishLocale = Locale("en", "US");
  static bool isRtl = true;
}

extension LanguageEnumEx on LanguageEnum {
  String getValuse() {
    switch (this) {
      case LanguageEnum.arbic:
        return Changelanguage.arbic;
      case LanguageEnum.english:
        return Changelanguage.english;
    }
  }
}
