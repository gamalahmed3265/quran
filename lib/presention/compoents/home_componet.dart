import 'package:flutter/material.dart';

class HomeCompent extends StatelessWidget {
  final String image;
  final String title;
  final String routeName;
  const HomeCompent({
    Key? key,
    required this.image,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            boxShadow: const [BoxShadow(color: Colors.grey)],
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
