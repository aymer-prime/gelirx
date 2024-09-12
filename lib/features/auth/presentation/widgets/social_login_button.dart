import 'package:flutter/material.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import '../../../../app/utils/resources/values_manager.dart';

class socialLoginButton extends StatelessWidget {
  final String image;
  final Function() onTap;
  const socialLoginButton(
      {super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s50,
      height: AppSize.s50,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: ColorManager.textfieldFillColor,
          side: BorderSide(
            color: ColorManager.textfieldBorderColor,
            width: 1.5,
          ),
        ),
        child: Image.asset(
          image,
          height: AppSize.s24,
        ),
      ),
    );
  }
}
