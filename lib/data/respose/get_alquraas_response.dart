import 'package:quran/domain/enities/alquraa_enitits.dart';

// class BaseAlquraaResponse extends BaseAlquraaEnities{
// const  BaseAlquraaResponse({required super.alquraaEnities});
//  factory BaseAlquraaResponse.fromJson(Map<String, dynamic> json) {
//     return BaseAlquraaResponse(alquraaEnities: List<AlquraaResponse>.);
//   }
// }

// List<int>.from(json["genre_ids"].map((e) => e)),
class AlquraaResponse extends AlquraaEnities {
  const AlquraaResponse(
      {required super.identifier,
      required super.language,
      required super.name,
      required super.englishName,
      required super.format,
      required super.type});

  factory AlquraaResponse.fromJson(Map<dynamic, dynamic> json) {
    return AlquraaResponse(
        identifier: json["identifier"],
        language: json['language'],
        name: json["name"],
        englishName: json["englishName"],
        format: json["format"],
        type: json["type"]);
  }
}
