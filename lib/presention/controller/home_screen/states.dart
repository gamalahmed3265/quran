import 'package:equatable/equatable.dart';

import 'package:quran/app/extensions.dart';
import 'package:quran/domain/enities/get_whole_quran_enities.dart';

import '../../state_render/request_state.dart';

const BaseDataEnities baseDataEnitiesPublic = BaseDataEnities(
  code: zero,
  status: empty,
  data: Data(
      surahs: [],
      edition: EditionEnities(
        identifier: "",
        language: "",
        name: "",
        englishName: "",
        format: "",
        type: "",
      )),
);

class GetByJuzState extends Equatable {
  final BaseDataEnities baseDataEnities;
  final ReuestState reuestState;
  final String message;
  const GetByJuzState(
      {this.baseDataEnities = baseDataEnitiesPublic,
      this.reuestState = ReuestState.loading,
      this.message = ""});
  GetByJuzState copyWith({
    BaseDataEnities? baseDataEnities,
    ReuestState? reuestState,
    String? message,
  }) {
    return GetByJuzState(
      baseDataEnities: baseDataEnities ?? this.baseDataEnities,
      reuestState: reuestState ?? this.reuestState,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [baseDataEnities, reuestState, message];
}
