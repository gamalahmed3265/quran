import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quran/app/app_prefs.dart';
import 'package:quran/data/network/network_info.dart';
import 'package:quran/domain/use_case/get_whole_quran.dart';
import 'package:quran/presention/compoents/search_componet.dart';
import 'package:quran/presention/resourse/color_manager.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/string_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

import '../../../data/data_source/remote/remote.dart';
import '../../../data/respoitry/respoity.dart';
import '../../../domain/respoitry/respoity.dart';
import '../../../domain/use_case/use_case_get_by_num_juz.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(translation(context).quranKeram),
          actions: [
            IconButton(
                onPressed: () async {
                  getData();
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(ValuseManager.s15),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorManager.green,
                        borderRadius: BorderRadius.circular(ValuseManager.s20)),
                    child: TabBar(
                      labelPadding: const EdgeInsets.all(ValuseManager.s10),
                      controller: controller,
                      indicatorColor: Colors.white,
                      indicatorPadding: const EdgeInsets.only(bottom: 10),
                      tabs: [
                        Tab(
                          child: Text(AppString.juz),
                        ),
                        Tab(
                          child: Text(AppString.surah),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: ValuseManager.s40,
                ),
                Expanded(
                  flex: 1,
                  child: defuletTextForm(
                    controller: searchController,
                    labls: AppString.search,
                    icon: Icons.search,
                  ),
                ),
                const SizedBox(
                  height: ValuseManager.s40,
                ),
                Expanded(
                  flex: 4,
                  child: TabBarView(controller: controller, children: [
                    listViewByHuz(),
                    listViewByHuz(),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }

  ListView listViewByHuz() {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: ((context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, RouteManager.quranDetial);
            },
            leading: Text((getIndexofJuz(index)).toString()),
            title: const Text(
              "dfssdk",
              textDirection: TextDirection.rtl,
            ),
            trailing: index % 2 == 0
                ? const Icon(Icons.baby_changing_station_sharp)
                : const Icon(Icons.book),
          );
        }));
  }

  getIndexofJuz(int index) {
    return ++index;
  }

  getData() async {
    print("object");
    InternetConnectionChecker internetConnectionChecker =
        InternetConnectionChecker();
    NetWorkInfo netWorkInfo = NetWorkInfoImp(internetConnectionChecker);
    print(await netWorkInfo.isConnected);

    RemoteDataSource remoteDataSource = RemoteDataSourceImp();
    Respoitry respoitry = RespoitryImp(remoteDataSource);
    UseCaseGetWholeQuran useCasegetWolQuran = UseCaseGetWholeQuran(respoitry);
    final response = await useCasegetWolQuran.execute("ar");

    print(response);
  }
}
