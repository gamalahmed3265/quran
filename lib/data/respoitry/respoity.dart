import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quran/data/network/error_handler.dart';
import 'package:quran/domain/enities/alquraa_enitits.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';
import 'package:quran/domain/respoitry/respoity.dart';

import '../../domain/enities/error_message.dart';
import '../data_source/remote/remote.dart';
import '../network/exception.dart';
import '../network/network_info.dart';

class RespoitryImp extends Respoitry {
  final RemoteDataSource _remoteDataSource;
  RespoitryImp(this._remoteDataSource);
  @override
  Future<Either<ErrorMessageEnities, BaseDataEnities>> getDataByJuz(
      int numberOfJuz, String language) async {
    final response =
        await _remoteDataSource.getDataByJuz(numberOfJuz, language);
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerErrorHandle(
          code: error.failure.code,
          status: error.failure.status,
          message: error.failure.message));
    }
  }

  @override
  Future<Either<ErrorMessageEnities, List<AlquraaEnities>>>
      getAlquraas() async {
    final response = await _remoteDataSource.getAlquraas();
    try {
      return Right(response);
    } on ServerException catch (error) {
      return Left(ServerErrorHandle(
          code: error.failure.code,
          status: error.failure.status,
          message: error.failure.message));
    }
  }

  @override
  Future<Either<ErrorMessageEnities, BaseDataEnities>> getWholeQuran(
      String language) async {
    InternetConnectionChecker internetConnectionChecker =
        InternetConnectionChecker();
    NetWorkInfo netWorkInfo = NetWorkInfoImp(internetConnectionChecker);

    if (await netWorkInfo.isConnected) {
      final response = await _remoteDataSource.getWholeQuran(language);
      try {
        print("repostiry ${response.data}");
        return Right(response);
      } on ServerException catch (error) {
        return Left(ServerErrorHandle(
            code: error.failure.code,
            status: error.failure.status,
            message: error.failure.message));
      }
    } else {
      return const Left(ServerErrorHandle(
          code: 403,
          status: "error.failure.status",
          message: "error.failure.message"));
    }
  }
}
