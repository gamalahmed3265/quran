import 'package:quran/domain/enities/error_message.dart';
import 'package:dartz/dartz.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';
import 'package:quran/domain/respoitry/respoity.dart';
import 'package:quran/domain/use_case/base_use_case.dart';

class UseCaseGetWholeQuran extends BaseUseCase<String, BaseDataEnities> {
  final Respoitry _respoitry;

  UseCaseGetWholeQuran(this._respoitry);
  @override
  Future<Either<ErrorMessageEnities, BaseDataEnities>> execute(
      String input) async {
    final response = await _respoitry.getWholeQuran(input);
    print("use case $response");

    return response;
  }
}
