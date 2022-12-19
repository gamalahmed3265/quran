import 'package:quran/domain/enities/error_message.dart';
import 'package:dartz/dartz.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';
import 'package:quran/domain/enities/model_use_case.dart';
import 'package:quran/domain/respoitry/respoity.dart';
import 'package:quran/domain/use_case/base_use_case.dart';

class UseCaseGetByJuz extends BaseUseCase<ModelUseCaseInput, BaseDataEnities> {
  final Respoitry _respoitry;

  UseCaseGetByJuz(this._respoitry);
  @override
  Future<Either<ErrorMessageEnities, BaseDataEnities>> execute(
      ModelUseCaseInput input) async {
    final response =
        await _respoitry.getDataByJuz(input.numberOfJuz, input.language);
    print(response);
    return response;
  }
}
