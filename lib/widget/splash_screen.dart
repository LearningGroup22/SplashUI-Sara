import 'package:flutter/material.dart';
import 'package:splashapp/core/extansions/extansion.dart';

import 'package:splashapp/widget/png_image_widget.dart';
import '../core/constants/AppStrings.dart';

class SplashScreenItem extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const SplashScreenItem({Key? key, required this.title, required this.image, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppStrings appString = AppStrings();
    return Padding(
      padding: context.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _appTiteText(appString, context),
          SizedBox(height: context.highValue),
          Expanded(
              child: JpgImage(
            name: image,
          )),
          SizedBox(height: context.normalValue),
          _titleText(context),
          SizedBox(height: context.lowValue),
          _descriptionText(context),
        ],
      ),
    );
  }

  Text _appTiteText(AppStrings appString, BuildContext context) {
    return Text(
      appString.foodExpressText,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Text _titleText(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.w400),
    );
  }

  Text _descriptionText(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
