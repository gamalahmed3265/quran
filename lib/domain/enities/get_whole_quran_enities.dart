import 'package:equatable/equatable.dart';

class BaseDataEnities extends Equatable {
  final int code;
  final String status;
  final Data data;
  const BaseDataEnities({
    required this.code,
    required this.status,
    required this.data,
  });

  @override
  List<Object?> get props => [
        code, status,
        //  data
      ];
}

class Data extends Equatable {
  final List<SurahEnities> surahs;
  // final SurahsAllEnities surahs;
  final EditionEnities edition;

  const Data({
    required this.surahs,
    // required this.surahs,
    required this.edition,
  });
  @override
  List<Object?> get props => [
        surahs,
        //  surahs,
        edition
      ];
}

// class SurahsAllEnities extends Equatable {
//   final Map<String, SurahEnities> numberOfSurah;
//   const SurahsAllEnities({required this.numberOfSurah});

//   @override
//   List<Object?> get props => [numberOfSurah];
// }

class AyahsEnities extends Equatable {
  final int number;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;
  // final bool sajda;

  const AyahsEnities({
    required this.number,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    // required this.sajda
  });

  @override
  List<Object?> get props => [
        number,
        text,
        numberInSurah,
        juz,
        manzil,
        page,
        ruku,
        hizbQuarter,
        // sajda
      ];
}

class SurahEnities extends Equatable {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final String revelationType;
  final List<AyahsEnities> ayahs;
  const SurahEnities(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required this.ayahs});

  @override
  List<Object?> get props => [
        number,
        name,
        englishName,
        englishNameTranslation,
        revelationType,
        ayahs
      ];
}

class EditionEnities extends Equatable {
  final String identifier;
  final String language;
  final String name;
  final String englishName;
  final String format;
  final String type;

  const EditionEnities({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
  });

  @override
  List<Object?> get props =>
      [identifier, language, name, englishName, format, type];
}
