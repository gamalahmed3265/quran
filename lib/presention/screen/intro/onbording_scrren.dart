import 'package:flutter/material.dart';
import 'package:quran/presention/compoents/model_of_widget.dart';
import 'package:quran/presention/resourse/router_manager.dart';
import 'package:quran/presention/resourse/valuse_manager.dart';

import '../../compoents/dot_indactor.dart';
import '../../compoents/onbording_compoent.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  int pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(ValuseManager.s10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                    itemCount: OnBordingModel.listOnBording.length,
                    controller: _pageController,
                    onPageChanged: ((value) {
                      setState(() {
                        pageIndex = value;
                      });
                    }),
                    itemBuilder: ((context, index) => OnbordingConent(
                          image: OnBordingModel.listOnBording[index].image,
                          title: OnBordingModel.listOnBording[index].title,
                          descriotion:
                              OnBordingModel.listOnBording[index].descriotion,
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  ...List.generate(
                      OnBordingModel.listOnBording.length,
                      (index) => Padding(
                            padding:
                                const EdgeInsets.only(right: ValuseManager.s10),
                            child: DotIndactor(isActive: index == pageIndex),
                          )),
                  const Spacer(),
                  SizedBox(
                    height: ValuseManager.s50,
                    width: ValuseManager.s50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        onPressed: () {
                          _pageController.nextPage(
                              duration: const Duration(
                                  milliseconds: ValuseManager.milliseconds),
                              curve: Curves.ease);
                          if (pageIndex == 3) {
                            Navigator.of(context)
                                .pushReplacementNamed(RouteManager.home);
                          }
                        },
                        child: const Icon(Icons.arrow_forward_ios_sharp)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
