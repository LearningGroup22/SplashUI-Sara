import 'package:flutter/material.dart';

import '../constants/AppColors.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.02;
  double get normalValue => height * 0.03;
  double get highValue => height * 0.06;
  double get lowDotWidth => width * 0.025;
  double get normalDotWidth => width * 0.09;
  double get lowDotHeight => height * 0.013;
  double get elevatedButtonHeight => height * 0.059;
  double get elevatedButtonWidth => width * 0.3;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get pagePadding => EdgeInsets.all(lowValue);
}

extension BorderExtension on BuildContext {
  BorderRadius get radiusAll => const BorderRadius.all(Radius.circular(10));
  BorderRadius get raduisRight => const BorderRadius.only(
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      );
  BorderRadius get raduisLeft => const BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      );
}

extension DecorationExtension on BuildContext {
  BoxDecoration get boxDecoraiton => BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.darkGreen, width: 2),
      );
}

extension PaddingExtensionOnly on BuildContext {
  EdgeInsets get paddingNormalTop => EdgeInsets.only(top: normalValue);
  EdgeInsets get paddingElevatedOnly => const EdgeInsets.only(top: 10, left: 21, right: 30, bottom: 10);
}
extension MarginExtentionAll on BuildContext {
  EdgeInsets get marginlow => const EdgeInsets.all(3);
}
