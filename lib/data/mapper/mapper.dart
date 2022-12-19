// import 'package:quran/app/extensions.dart';
// import 'package:quran/domain/enities/juz_enities.dart';

// extension EditionResponseMapper on EditionEnities? {
//   EditionEnities toDomain() {
//     return const EditionEnities(
//         identifier: empty,
//         language: "en",
//         name: empty,
//         englishName: empty,
//         format: empty,
//         type: empty,
//         direction: empty);
//   }
// }

// extension SurahResponseMapper on SurahEnities? {
//   SurahEnities toDomain() {
//     return const SurahEnities(
//         number: zero,
//         name: empty,
//         englishName: empty,
//         englishNameTranslation: empty,
//         revelationType: empty,
//         numberOfAyahs: zero);
//   }
// }

// extension AyahsMapper on AyahsEnities? {
//   AyahsEnities toDomain() {
//     return AyahsEnities(
//         number: zero,
//         text: empty,
//         surah: this!.surah.toDomain(),
//         numberInSurah: zero,
//         juz: zero,
//         manzil: zero,
//         page: zero,
//         ruku: zero,
//         hizbQuarter: zero,
//         sajda: isValue);
//   }
// }

// extension DataMapper on Data? {
//   // EditionEnities editionEniti/es=EditionEnities();
//   Data toDomain() {
//     return Data(
//         number: zero, ayahs: const [], edition: this!.edition.toDomain());
//   }
// }

// extension BaseDataMapper on BaseDataEnities? {
//   BaseDataEnities toDomain() {
//     return BaseDataEnities(
//         code: zero, status: empty, data: this!.data.toDomain());
//   }
// }

// // extension SurahsAllMapper oFn SurahsAllEnities? {
// // final Map<String, SurahEnities> numberOfSurah={
// //   "":SurahEnities.toDomain()
// //  };
// //    SurahsAllEnities toDomain() {
// //     return const SurahsAllEnities(numberOfSurah: numberOfSurah);
// //   }
// // }

