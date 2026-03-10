import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../core/consts_manager.dart';
import '../../core/padding_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingController _controller;

  double currentIndex = 0;

  @override
  void initState() {
    _controller = OnBoardingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                _controller
                    .listOnBoarding[currentIndex.toInt()]
                    .image,
              ),
                      ElevatedButton(onPressed: (){

                      }, child: Text("continue")),
                      DotsIndicator(
                        dotsCount: _controller.listOnBoarding.length,
                        position: currentIndex,
                        decorator: DotsDecorator(
                          size: const Size.square(9.0),
                          activeSize: const Size(18.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),




              Text(
                _controller
                    .listOnBoarding[currentIndex.toInt()]
                    .title,
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardingController {
  List<OnBoardingModel> listOnBoarding = ConstsManager.onBoardingList;

  OnBoardingController() {
    _init();
  }

  void _init() {}

  void dispose() {}
}