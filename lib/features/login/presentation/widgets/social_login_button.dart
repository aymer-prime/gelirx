import 'package:flutter/material.dart';
import '../../../../app/utils/resources/values_manager.dart';

class socialLoginButton extends StatelessWidget {
  final String image;
  final Function() onTap;
  const socialLoginButton({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.white,
      ),
      child: Image.asset(
        image,
        height: AppSize.s24,
      ),
    );
  }
}
