import 'dart:convert';

import '../../domain/enities/get_whole_quran_enities.dart';

class BaseDataReponse extends BaseDataEnities {
  const BaseDataReponse(
      {required super.code, required super.status, required super.data});

  factory BaseDataReponse.fromJson(Map<String, dynamic> json) {
    return BaseDataReponse(
        code: json["code"],
        status: json["status"],
        data: DataResponse.fromJson(json["data"]));
  }
}

class DataResponse extends Data {
  const DataResponse({required super.surahs, required super.edition});

  factory DataResponse.fromJson(Map<String, dynamic> json) {
    return DataResponse(
        surahs: List.from(json["surahs"].map((e) => SurahResponse.fromJson(e))),
        edition: EditionResponse.fromJson(json["edition"]));
  }
}

class AyahsResponse extends AyahsEnities {
  const AyahsResponse({
    required super.number,
    required super.text,
    required super.numberInSurah,
    required super.juz,
    required super.manzil,
    required super.page,
    required super.ruku,
    required super.hizbQuarter,
    // required super.sajda
  });
  factory AyahsResponse.fromJson(Map<String, dynamic> json) {
    return AyahsResponse(
      number: json['number'],
      text: json['text'],
      numberInSurah: json['numberInSurah'],
      juz: json['juz'],
      manzil: json['manzil'],
      page: json['page'],
      ruku: json['ruku'],
      hizbQuarter: json['hizbQuarter'],
      // sajda: json['sajda'] as bool
    );
  }
}

class SurahResponse extends SurahEnities {
  const SurahResponse(
      {required super.number,
      required super.name,
      required super.englishName,
      required super.englishNameTranslation,
      required super.revelationType,
      required super.ayahs});
  factory SurahResponse.fromJson(Map<String, dynamic> json) {
    return SurahResponse(
        number: json['number'],
        name: json['name'],
        englishName: json['englishName'],
        englishNameTranslation: json['englishNameTranslation'],
        revelationType: json['revelationType'],
        ayahs: List.from(json["ayahs"].map((e) => AyahsResponse.fromJson(e))));
  }
}

class EditionResponse extends EditionEnities {
  const EditionResponse({
    required super.identifier,
    required super.language,
    required super.name,
    required super.englishName,
    required super.format,
    required super.type,
  });

  factory EditionResponse.fromJson(Map<String, dynamic> json) {
    return EditionResponse(
      identifier: json['identifier'],
      language: json['language'],
      name: json['name'],
      englishName: json['englishName'],
      format: json['format'],
      type: json['type'],
    );
  }
}
