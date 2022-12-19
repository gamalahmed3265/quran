import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/presention/controller/settings/bloc.dart';
import 'package:quran/presention/controller/settings/events.dart';
import 'package:quran/presention/controller/settings/state.dart';
import 'package:quran/presention/resourse/color_manager.dart';
import 'package:quran/presention/state_render/state_renderer.dart';

//القراء
class AlquraaScreen extends StatelessWidget {
  const AlquraaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AlquraaBloc()..add(AlquraaEvents())
      // ..add(AlquraaChangeEvents())
      ,
      child: Scaffold(
        appBar: AppBar(),
        body: const ListOfAlquraa(),
      ),
    );
  }
}

class ListOfAlquraa extends StatelessWidget {
  const ListOfAlquraa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlquraaBloc, AlquraaState>(
        buildWhen: (previous, current) =>
            previous.stateAlquraaRequest != current.stateAlquraaRequest,
        builder: (context, state) {
          return screenSwatich(
              state.stateAlquraaRequest,
              ListView.separated(
                  itemCount: state.alquraaEnities.length,
                  itemBuilder: ((context, index) => ListTile(
                        title: Text(state.alquraaEnities[index].name),
                        subtitle: Text(state.alquraaEnities[index].englishName),
                        // subtitle: Text(state.selectedIndex.toString()),

                        onTap: () {
                          // updateSelected(
                          //   state.alquraaEnities[index],
                          // );
                          // print(state.selectedIndex);
                          // print(index);
                          // context.read<AlquraaBloc>().changeIndex(index);
                          // BlocProvider.of<AlquraaBloc>(context)
                          //     .changeIndex(index);
                        },
                        selected: index != state.selectedIndex
                            ? state.isSelected
                            : !state.isSelected,
                        // selected: false,
                        leading: CircleAvatar(
                          backgroundColor: index != state.selectedIndex
                              // backgroundColor: index != 0
                              ? ColorManager.grey
                              : ColorManager.green,
                          child: Text(
                            getIndex(
                              index,
                            ),
                            style: const TextStyle(color: ColorManager.white),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.music_note,
                          // color: Colors.red,
                        ),
                      )),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider()));
        });
  }

  String getIndex(int index) => (++index).toString();
}
