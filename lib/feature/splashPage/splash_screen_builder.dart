import 'package:flutter/material.dart';
import 'package:splashapp/core/constants/AppColors.dart';
import 'package:splashapp/core/constants/duration.dart';
import 'package:splashapp/core/extansions/extansion.dart';
import 'package:splashapp/feature/splashPage/model/splash_screen_model.dart';
import 'package:splashapp/widget/splash_screen.dart';
import 'package:splashapp/product/customElevatedButton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 13,
            child: _onboardPages(pageController),
          ),
          Expanded(flex: 1, child: _pagedots()),
          Expanded(
              flex: 4,
              child: currentPageIndex != splashScreens.length - 1
                  ? _movmentButtons(context, pageController)
                  : _homeButton(context))
        ],
      )),
    );
  }

  Row _homeButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buttonDimension(context, ElevatedButton(onPressed: () {}, child: Text(appString.letsGoText))),
      ],
    );
  }

  PageView _onboardPages(PageController pageController) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          currentPageIndex = value;
        });
      },
      itemCount: splashScreens.length,
      itemBuilder: (BuildContext context, int index) {
        return SplashScreenItem(
          title: splashScreens[index].title,
          description: splashScreens[index].disception,
          image: splashScreens[index].image,
        );
      },
    );
  }

  Row _pagedots() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(splashScreens.length, (index) => _dotCircle(index)));
  }

  Row _movmentButtons(BuildContext context, PageController pageController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buttonDimension(
            context,
            CustomElevatedButton(
              buttonTitle: appString.previousText,
              onPressed: () {
                pageController.previousPage(duration: DurationItems.durationOneSecond(), curve: Curves.easeOutQuad);
              },
              right: false,
            )),
        _buttonDimension(
            context,
            CustomElevatedButton(
              buttonTitle: appString.nextText,
              onPressed: () {
                pageController.nextPage(duration: DurationItems.durationOneSecond(), curve: Curves.easeOutQuad);
              },
            )),
      ],
    );
  }

  SizedBox _buttonDimension(BuildContext context, Widget elevatedButton) {
    return SizedBox(height: context.elevatedButtonHeight, width: context.elevatedButtonWidth, child: elevatedButton);
  }

  AnimatedContainer _dotCircle(int indexItem) {
    return AnimatedContainer(
      duration: DurationItems.durationOneMillisecond(),
      margin: context.marginlow,
      height: context.lowDotHeight,
      width: currentPageIndex == indexItem ? context.normalDotWidth : context.lowDotWidth,
      decoration: context.boxDecoraiton.copyWith(
        color: currentPageIndex == indexItem ? AppColors.darkGreen : AppColors.white,
      ),
    );
  }
}
