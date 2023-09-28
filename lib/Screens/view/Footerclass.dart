import 'package:flutter/material.dart';
import 'package:my_portfolio/helpers/colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        color: AppColors.bgColor2,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.themeColor,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.black,
          ),
        ));
  }
}
