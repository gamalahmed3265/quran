import 'package:dartz/dartz.dart';
import 'package:quran/domain/enities/alquraa_enitits.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';

import '../enities/error_message.dart';

abstract class Respoitry {
  Future<Either<ErrorMessageEnities, BaseDataEnities>> getDataByJuz(
      int numberOfJuz, String language);

  Future<Either<ErrorMessageEnities, BaseDataEnities>> getWholeQuran(
      String language);

  Future<Either<ErrorMessageEnities, List<AlquraaEnities>>> getAlquraas();
}
