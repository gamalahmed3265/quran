import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app/language.dart';
import 'package:quran/presention/controller/home_screen/bloc.dart';
import 'package:quran/presention/controller/home_screen/events.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

import '../../../compoents/List_of_surh.dart';

class QuranDetials extends StatelessWidget {
  const QuranDetials({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetByJuzBloc()..add(GetWholeQuen())
      // ..add(AlquraaChangeEvents())
      ,
      child: Directionality(
        textDirection:
            Changelanguage.isRtl ? TextDirection.rtl : TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(),
          body: const SafeArea(
            minimum: EdgeInsets.all(ValuseManager.s15),
            child: ListOfSurh(),
          ),
        ),
      ),
    );
  }
}
