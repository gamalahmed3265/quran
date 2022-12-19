import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:quran/app/language.dart';
import 'package:quran/presention/compoents/model_of_widget.dart';
import 'package:quran/presention/compoents/menu_componet.dart';

import '../resourse/valuse_manager.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({Key? key}) : super(key: key);

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    MenuItemModel currentItem = MenuComponet.builMenuTitle(context)[0];
    return ZoomDrawer(
      // style: DrawerStyle.style1,
      isRtl: Changelanguage.isRtl,
      showShadow: true,
      borderRadius: ValuseManager.s30,
      angle: ValuseManager.s00,
      // menuBackgroundColor: Colors.green,
      mainScreen: const HomePage(),
      menuScreen: MenuComponet(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });
          }),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: const Icon(Icons.menu),
          ),
        ),
        body: SizedBox(
            width: size.width,
            height: size.height,
            child: BottomModel.screenBottomNavigationBarItem[currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          items: BottomNavigationObject.bottomNavigationBarItem(context),
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }
}
