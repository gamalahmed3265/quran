import 'dart:async';
import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/presention/controller/settings/events.dart';
import 'package:quran/presention/controller/settings/state.dart';

import 'package:quran/data/data_source/remote/remote.dart';
import 'package:quran/data/respoitry/respoity.dart';
import 'package:quran/domain/respoitry/respoity.dart';
import 'package:quran/domain/use_case/get_alquraas.dart';
import 'package:quran/presention/state_render/request_state.dart';

class AlquraaBloc extends Bloc<AlquraaEventsInit, AlquraaState> {
// final MoiveNowPlayingUseCase useCaseMoiveNowPlayingUseCase;

  AlquraaBloc(
      // this.useCaseMoiveNowPlayingUseCase,
      )
      : super(const AlquraaState()) {
    on<AlquraaEvents>(_getAlquraa);
    // on<AlquraaChangeEvents>(chammmngeIndex);
  }

  FutureOr<void> _getAlquraa(
      AlquraaEvents event, Emitter<AlquraaState> emit) async {
    RemoteDataSource remoteDataSource = RemoteDataSourceImp();
    Respoitry respoitry = RespoitryImp(remoteDataSource);
    UseCaseGetAlquraas useCaseGetAlquraas = UseCaseGetAlquraas(respoitry);
    final result = await useCaseGetAlquraas.execute(Void);

    emit(const AlquraaState(stateAlquraaRequest: ReuestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            message: l.message, stateAlquraaRequest: ReuestState.error)),
        (r) => emit(state.copyWith(
            alquraaEnities: r, stateAlquraaRequest: ReuestState.loaded)));
  }

// FutureOr<void> chammmngeIndex(
//     AlquraaChangeEvents event, Emitter<AlquraaState> emit,) async {
//   // emit(const AlquraaState(isSelected: false));
//   int index = state.selectedIndex;
//   // changeIndex(index);
//   emit(state.copyWith(isSelected: true, selectedIndex: index));
//   // emit(state.copyWith(isSelected: true));
//   // emit(state.copyWith());
//   print("sdjkdj$index");

// }

  // changeIndex(int index) {
  //   state.copyWith(isSelected: true, selectedIndex: index);
  //   // print("sdjkdj$index");
  // }
}
