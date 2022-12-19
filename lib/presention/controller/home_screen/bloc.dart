import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app/language.dart';
import 'package:quran/data/data_source/remote/remote.dart';
import 'package:quran/data/respoitry/respoity.dart';
import 'package:quran/domain/enities/model_use_case.dart';
import 'package:quran/domain/respoitry/respoity.dart';
import 'package:quran/domain/use_case/get_whole_quran.dart';
import 'package:quran/domain/use_case/use_case_get_by_num_juz.dart';
// import 'package:quran/domain/use_case/use_case_get_by_num_juz.dart';
import 'package:quran/presention/controller/home_screen/events.dart';
import 'package:quran/presention/controller/home_screen/states.dart';
import 'package:quran/presention/state_render/request_state.dart';

import '../../../domain/enities/error_message.dart';
import '../../../domain/enities/get_whole_quran_enities.dart';

class GetByJuzBloc extends Bloc<InitEvents, GetByJuzState> {
  // final UseCaseGetByJuz useCaseGetByJuz;

  GetByJuzBloc(
      // this.useCaseGetByJuz,
      )
      : super(const GetByJuzState()) {
    on<GetWholeQuen>(_getWholeQuran);
  }

  FutureOr<void> _getWholeQuran(
      GetWholeQuen event, Emitter<GetByJuzState> emit) async {
    // ignore: void_checks
    // ModelUseCaseInput input = ModelUseCaseInput(language: "ar", numberOfJuz: 1);

    RemoteDataSource remoteDataSource = RemoteDataSourceImp();
    Respoitry respoitry = RespoitryImp(remoteDataSource);
    UseCaseGetWholeQuran useCasegetWolQuran = UseCaseGetWholeQuran(respoitry);
    Changelanguage changelanguage = Changelanguage();
    LanguageEnum isRtl =
        Changelanguage.isRtl ? LanguageEnum.arbic : LanguageEnum.arbic;
    final response = await useCasegetWolQuran.execute(isRtl.name);

    emit(const GetByJuzState(reuestState: ReuestState.loading));
    response.fold((l) {
      if (l.code == 403) {
        return emit(state.copyWith(reuestState: ReuestState.nonternet));
      } else {
        return emit(state.copyWith(reuestState: ReuestState.error));
      }
    },
        (r) => emit(state.copyWith(
            baseDataEnities: r, reuestState: ReuestState.loaded)));
  }
}
