import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/colors.dart';

// ignore: must_be_immutable
class buildSocialButton extends StatelessWidget {
  String asset;
  buildSocialButton({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.themeColor, width: 2)),
      padding: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {},
        radius: 50,
        borderRadius: BorderRadius.circular(500),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        child: Image.asset(
          asset,
          fit: BoxFit.contain,
          width: 20,
          height: 24,
          color: AppColors.themeColor,
        ),
      ),
    );
  }
}
