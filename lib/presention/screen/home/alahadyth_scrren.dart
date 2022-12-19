import 'package:flutter/material.dart';
import 'package:quran/presention/resourse/image_manager.dart';

//الحديث
class AlahadythScrren extends StatefulWidget {
  const AlahadythScrren({Key? key}) : super(key: key);

  @override
  State<AlahadythScrren> createState() => _AlahadythScrrenState();
}

class _AlahadythScrrenState extends State<AlahadythScrren> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("cars"),
            centerTitle: false,
            background: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageManager.azkarmageHome),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              onTap: () {
                print(index);
              },
              leading: Text((index).toString()),
              title: const Text("dfssdk"),
              trailing: index % 2 == 0
                  ? const Icon(Icons.baby_changing_station_sharp)
                  : const Icon(Icons.book),
            );
          }, childCount: 30),
        )
      ],
    ));
  }
}
