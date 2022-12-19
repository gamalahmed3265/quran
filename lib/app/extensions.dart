// extension on String

const String empty = "";
const int zero = 0;
const bool isValue = false;

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return empty;
    } else {
      return this!;
    }
  }
}

// extension on Integer

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return zero;
    } else {
      return this!;
    }
  }
}

extension NonNullBoolen on bool? {
  bool orZero() {
    if (this == null) {
      return isValue;
    } else {
      return this!;
    }
  }
}
