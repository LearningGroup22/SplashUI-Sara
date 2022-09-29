import 'package:splashapp/core/constants/AppImages.dart';
import 'package:splashapp/core/constants/AppStrings.dart';

class SplashScreenModel {
  String title;
  String disception;
  String image;
  SplashScreenModel({
    required this.title,
    required this.disception,
    required this.image,
  });
}

AppStrings appString = AppStrings();
ImageItems appImages = ImageItems();

List<SplashScreenModel> splashScreens = [
  SplashScreenModel(
    title: appString.devieryText,
    disception: appString.descriptionText,
    image: appImages.shoppingImage,
  ),
  SplashScreenModel(
    title: appString.preparedbyText,
    disception: appString.descriptionText,
    image: appImages.coffeshopImage,
  ),
  SplashScreenModel(
    title: appString.enjoyText,
    disception: appString.descriptionText,
    image: appImages.cookingImage,
  ),
];
