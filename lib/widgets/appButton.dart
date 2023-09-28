import 'package:flutter/material.dart';

import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  VoidCallback onTap;
  String txt;
  AppButton({
    Key? key,
    required this.onTap,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      height: 55,
      minWidth: 130,
      hoverColor: AppColors.aqua,
      
      splashColor: AppColors.lawGreen,
      elevation: 6,
      focusElevation: 12,
      
      color: AppColors.themeColor.withOpacity(0.7),
      shape: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Text(
        txt,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
