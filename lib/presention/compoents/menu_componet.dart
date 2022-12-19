import 'package:flutter/material.dart';
import 'package:quran/app/app_prefs.dart';
import 'package:quran/presention/resourse/router_manager.dart';

class MenuItemModel {
  final String title;
  final IconData icon;

  const MenuItemModel({required this.icon, required this.title});
}

class MenuComponet extends StatelessWidget {
  final MenuItemModel currentItem;
  final ValueChanged<MenuItemModel> onSelectedItem;
  const MenuComponet(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            for (int i = 0; i < builMenuTitle(context).length; i++) ...{
              builMenuItem(builMenuTitle(context)[i], context)
            },
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget builMenuItem(MenuItemModel item, BuildContext context) => ListTile(
        selected: currentItem == item,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {
          onSelectedItem(item);
          if (item.title == translation(context).settings) {
            Navigator.of(context).pushNamed(RouteManager.settingsScreen);
          }
        },
      );

  static List<MenuItemModel> builMenuTitle(BuildContext context) =>
      <MenuItemModel>[
        MenuItemModel(
            icon: Icons.settings, title: translation(context).settings),
        MenuItemModel(icon: Icons.share, title: translation(context).share),
        MenuItemModel(icon: Icons.help, title: translation(context).help),
        MenuItemModel(
            icon: Icons.account_box_outlined,
            title: translation(context).about),
        MenuItemModel(
            icon: Icons.star_rate_sharp, title: translation(context).rate),
      ];
}
