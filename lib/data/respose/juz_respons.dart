import '../../domain/enities/get_whole_quran_enities.dart';

// class BaseDataReponse extends BaseDataEnities {
//   const BaseDataReponse(
//       {required super.code, required super.status, required super.data});

//   factory BaseDataReponse.fromJson(Map<String, dynamic> json) {
//     return BaseDataReponse(
//         code: json["code"],
//         status: json["status"],
//         data: DataResponse.fromJson(json["data"]));
//   }
// }

// class DataResponse extends Data {
//   const DataResponse(
//       {required super.number,
//       required super.ayahs,
//       // required super.surahs,
//       required super.edition});

//   factory DataResponse.fromJson(Map<String, dynamic> json) {
//     return DataResponse(
//         number: json["number"],
//         ayahs: List.from(json["ayahs"].map((e) => AyahsResponse.fromJson(e))),
//         // surahs: SurahsAllResponse.fromJson(json["surahs"]),
//         edition: EditionResponse.fromJson(json["edition"]));
//   }
// }

// // class SurahsAllResponse extends SurahsAllEnities {
// //   const SurahsAllResponse({required super.numberOfSurah});

// //   factory SurahsAllResponse.fromJson(Map<String, SurahResponse> json) {
// //     // Map<>
// //     return SurahsAllResponse(numberOfSurah: json);
// //   }
// // }

// class AyahsResponse extends AyahsEnities {
//   const AyahsResponse(
//       {required super.number,
//       required super.text,
//       required super.surah,
//       required super.numberInSurah,
//       required super.juz,
//       required super.manzil,
//       required super.page,
//       required super.ruku,
//       required super.hizbQuarter,
//       required super.sajda});
//   factory AyahsResponse.fromJson(Map<String, dynamic> json) {
//     return AyahsResponse(
//         number: json['number'],
//         text: json['text'],
//         surah: SurahResponse.fromJson(json['surah']), //*************** */
//         numberInSurah: json['numberInSurah'],
//         juz: json['juz'],
//         manzil: json['manzil'],
//         page: json['page'],
//         ruku: json['ruku'],
//         hizbQuarter: json['hizbQuarter'],
//         sajda: json['sajda']);
//   }
// }

// class SurahResponse extends SurahEnities {
//   const SurahResponse(
//       {required super.number,
//       required super.name,
//       required super.englishName,
//       required super.englishNameTranslation,
//       required super.revelationType,
//       required super.numberOfAyahs});
//   factory SurahResponse.fromJson(Map<String, dynamic> json) {
//     return SurahResponse(
//         number: json['number'],
//         name: json['name'],
//         englishName: json['englishName'],
//         englishNameTranslation: json['englishNameTranslation'],
//         revelationType: json['revelationType'],
//         numberOfAyahs: json['numberOfAyahs']);
//   }
// }

// class EditionResponse extends EditionEnities {
//   const EditionResponse(
//       {required super.identifier,
//       required super.language,
//       required super.name,
//       required super.englishName,
//       required super.format,
//       required super.type,
//       required super.direction});

//   factory EditionResponse.fromJson(Map<String, dynamic> json) {
//     return EditionResponse(
//       identifier: json['identifier'],
//       language: json['language'],
//       name: json['name'],
//       englishName: json['englishName'],
//       format: json['format'],
//       type: json['type'],
//       direction: json['direction'],
//     );
//   }
// }
