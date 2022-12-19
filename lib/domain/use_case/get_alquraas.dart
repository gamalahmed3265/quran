import 'dart:ffi';

import 'package:quran/domain/enities/alquraa_enitits.dart';
import 'package:quran/domain/enities/error_message.dart';
import 'package:dartz/dartz.dart';
import 'package:quran/domain/respoitry/respoity.dart';
import 'package:quran/domain/use_case/base_use_case.dart';

class UseCaseGetAlquraas extends BaseUseCase<void, List<AlquraaEnities>> {
  final Respoitry _respoitry;

  UseCaseGetAlquraas(this._respoitry);
  @override
  Future<Either<ErrorMessageEnities, List<AlquraaEnities>>> execute(
      void input) async {
    final response = await _respoitry.getAlquraas();
    print(response);
    return response;
  }
}
