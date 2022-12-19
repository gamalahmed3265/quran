import 'package:flutter/material.dart';
import 'package:quran/presention/state_render/request_state.dart';

Widget screenSwatich(ReuestState state, Widget body) {
  switch (state) {
    case ReuestState.loading:
      return const Center(child: CircularProgressIndicator());

    case ReuestState.loaded:
      return body;

    case ReuestState.error:
      return const Center(child: Text("error"));
    case ReuestState.nonternet:
      return const Center(child: Text("no internet"));
  }
}
