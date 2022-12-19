import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app/language.dart';
import 'package:quran/presention/resourse/image_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';

import '../controller/home_screen/bloc.dart';
import '../controller/home_screen/states.dart';
import '../state_render/state_renderer.dart';
import 'aya_show.dart';

class ListOfSurh extends StatelessWidget {
  const ListOfSurh({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetByJuzBloc, GetByJuzState>(
        buildWhen: (previous, current) =>
            previous.reuestState != current.reuestState,
        builder: (context, state) {
          return screenSwatich(
              state.reuestState,
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(Changelanguage.isRtl
                            ? state.baseDataEnities.data.surahs[index].name
                            : state.baseDataEnities.data.surahs[index]
                                .englishName),
                        trailing: state.baseDataEnities.data.surahs[index]
                                    .revelationType ==
                                AppString.meccan
                            ? ClipRect(
                                child: Image.asset(ImageManager.kaaba),
                              )
                            : ClipRect(
                                child: Image.asset(ImageManager.moon),
                              ),
                        subtitle: Text(state
                            .baseDataEnities.data.surahs[index].ayahs.length
                            .toString()),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowAyah(
                                    surahEnities: state
                                        .baseDataEnities.data.surahs[index])),
                          );
                        },
                      ),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: state.baseDataEnities.data.surahs.length));
        });
  }
}
