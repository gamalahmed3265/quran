import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quran/app/constans.dart';
import 'package:quran/app/language.dart';
import 'package:quran/data/network/exception.dart';
import 'package:quran/data/respose/error_message_response.dart';
import 'package:quran/data/respose/get_alquraas_response.dart';
import 'package:quran/data/respose/get_whole_quran_respons.dart';

abstract class RemoteDataSource {
  Future<BaseDataReponse> getDataByJuz(int numberOfJuz, String language);
  Future<BaseDataReponse> getWholeQuran(String language);
  Future<List<AlquraaResponse>> getAlquraas();
}

class RemoteDataSourceImp extends RemoteDataSource {
  @override
  Future<BaseDataReponse> getDataByJuz(int numberOfJuz, String language) async {
    final response =
        await Dio().get(AppConstans.baseUrlJuz(language, numberOfJuz));
    if (response.statusCode == 200) {
      return BaseDataReponse.fromJson(response.data);
    } else {
      throw ServerException(
          failure: ErrorMessageReponse.fromJson(response.data));
    }
  }

  @override
  Future<List<AlquraaResponse>> getAlquraas() async {
    final response = await Dio().get(AppConstans.urlAlquraaR);
    var jsonData = jsonDecode(response.data);

    List<AlquraaResponse> alquraaResponse = <AlquraaResponse>[];

    if (response.statusCode == 200) {
      for (Map element in jsonData) {
        AlquraaResponse el = AlquraaResponse.fromJson(element);
        alquraaResponse.add(el);
      }
      return alquraaResponse;
    } else {
      throw ServerException(
          failure: ErrorMessageReponse.fromJson(response.data));
    }
  }

  @override
  Future<BaseDataReponse> getWholeQuran(String language) async {
    final response = await Dio().get(Changelanguage.isRtl
        ? AppConstans.baseWholeQuranar(language)
        : AppConstans.baseWholeQuranEn);
    if (response.statusCode == 200) {
      print("remote ${response.data}");
      return BaseDataReponse.fromJson(response.data);
    } else {
      throw ServerException(
          failure: ErrorMessageReponse.fromJson(response.data));
    }
  }
}
