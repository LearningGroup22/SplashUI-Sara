import 'package:flutter/material.dart';
import 'package:splashapp/core/constants/AppColors.dart';
import 'package:splashapp/core/extansions/extansion.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  final bool right;
  const CustomElevatedButton({Key? key, required this.onPressed, required this.buttonTitle, this.right = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: context.paddingElevatedOnly,
          backgroundColor: right ? AppColors.darkGreen : AppColors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: right ? context.raduisLeft :context.raduisRight,
          ),
        ),
        child: Text(buttonTitle,
            style:
                Theme.of(context).textTheme.subtitle1?.copyWith(color: right ? AppColors.white : AppColors.darkGreen)));
  }
}
