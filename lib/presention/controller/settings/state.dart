import 'package:equatable/equatable.dart';
import 'package:quran/domain/enities/alquraa_enitits.dart';
import 'package:quran/presention/state_render/request_state.dart';

class AlquraaState extends Equatable {
  final List<AlquraaEnities> alquraaEnities;
  final ReuestState stateAlquraaRequest;
  final String message; //
  final bool isSelected;
  final int selectedIndex;

  const AlquraaState({
    this.alquraaEnities = const [],
    this.stateAlquraaRequest = ReuestState.loading,
    this.message = "",
    this.isSelected = false,
    this.selectedIndex = 0,
  });

  AlquraaState copyWith({
    List<AlquraaEnities>? alquraaEnities,
    ReuestState? stateAlquraaRequest,
    String? message,
    bool? isSelected,
    int? selectedIndex,
  }) {
    return AlquraaState(
      alquraaEnities: alquraaEnities ?? this.alquraaEnities,
      stateAlquraaRequest: stateAlquraaRequest ?? this.stateAlquraaRequest,
      message: message ?? this.message,
      isSelected: isSelected ?? this.isSelected,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  @override
  List<Object?> get props =>
      [alquraaEnities, stateAlquraaRequest, message, isSelected, selectedIndex];
}
