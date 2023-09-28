import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portfolio/helpers/app_text_style.dart';
import 'package:my_portfolio/helpers/colors.dart';
import 'package:my_portfolio/helpers/responsivelayout.dart';
import 'package:my_portfolio/widgets/appButton.dart';

class ContactMe extends StatelessWidget {
  ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        color: AppColors.bgColor,
        alignment: Alignment.center,
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 12),
        child: Responsive(
          color: AppColors.bgColor,
          paddingWidth: size.width * 0.1,
          mobile: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleText(),
                40.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Full Name', context: context),
                    ),
                  ),
                ),
                20.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Email Address', context: context),
                    ),
                  ),
                ),
                15.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Mobile Number', context: context),
                    ),
                  ),
                ),
                20.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Email Subject', context: context),
                    ),
                  ),
                ),
                15.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      maxLines: 15,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Your Message', context: context),
                    ),
                  ),
                ),
                20.verticalSpace,
                AppButton(onTap: () {}, txt: 'Send Message')
              ]),
          desktop: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleText(),
                40.verticalSpace,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          elevation: 8,
                          child: TextField(
                            cursorColor: AppColors.white,
                            style: AppTextStyles.normalStyle(),
                            decoration: buildInputDecoration(
                                txt: 'Full Name', context: context),
                          ),
                        ),
                      ),
                      20.horizontalSpace,
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          elevation: 8,
                          child: TextField(
                            cursorColor: AppColors.white,
                            style: AppTextStyles.normalStyle(),
                            decoration: buildInputDecoration(
                                txt: 'Email Address', context: context),
                          ),
                        ),
                      ),
                    ]),
                15.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        elevation: 8,
                        child: TextField(
                          cursorColor: AppColors.white,
                          style: AppTextStyles.normalStyle(),
                          decoration: buildInputDecoration(
                              txt: 'Mobile Number', context: context),
                        ),
                      ),
                    ),
                    20.horizontalSpace,
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        elevation: 8,
                        child: TextField(
                          cursorColor: AppColors.white,
                          style: AppTextStyles.normalStyle(),
                          decoration: buildInputDecoration(
                              txt: 'Email Subject', context: context),
                        ),
                      ),
                    ),
                  ],
                ),
                15.verticalSpace,
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      maxLines: 15,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          txt: 'Your Message', context: context),
                    ),
                  ),
                ),
                20.verticalSpace,
                AppButton(onTap: () {}, txt: 'Send Message')
              ]),
        ));
  }

  InputDecoration buildInputDecoration(
      {required BuildContext context, required String txt}) {
    return InputDecoration(
        hintText: txt,
        fillColor: AppColors.bgColor2,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintStyle: AppTextStyles.normalStyle(
            fontSize: Responsive.isMobile(context) ? 15 : 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none));
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: Duration(milliseconds: 1600),
      child: RichText(
        text: TextSpan(
            text: 'Contact   ',
            style: AppTextStyles.headingStyles(fontSize: 30),
            children: [
              TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      color: AppColors.robinEdgeBlue, fontSize: 30))
            ]),
      ),
    );
  }
}
